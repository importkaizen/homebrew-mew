# Mew

A native macOS terminal with a charcoal theme, cyan and lime accents, and a Mew portrait made from letters and punctuation. Mew's body has subtle lavender shading and blue eye details. The custom header keeps the native macOS close, minimize, and full-screen buttons. Drag the header to move the window. The welcome artwork scrolls upward with command output; scroll back to see it again, or use `clear` in zsh to start fresh with Mew at the top.

At launch, Mew plays the bundled `Sources/Mew/mew.gif` as colored ASCII frames at the GIF's own timing. The final ASCII frame stays in the terminal's scrollback as the shell appears; there is no second portrait or morph at the end.

Each window starts a persistent interactive login shell in a pseudo-terminal. Shell configuration and command history work normally; interactive programs, ANSI colors, terminal resizing, scrollback, keyboard input, and copy/paste are handled by SwiftTerm. In zsh, Mew leaves one blank line before each prompt after the first. `help` opens Mew's command guide, `help <command>` opens a manual page, and `credits` prints “built by abel with love”.

Rendering uses Metal when available, with an automatic CoreGraphics fallback. SwiftTerm's immediate local-input redraw path and cached GPU rows keep typing responsive. A continuously visible custom caret follows SwiftTerm's real cursor updates: it glides after typing, slides back on deletion, and fades to its new line when a command is entered. Each transition has a short motion blur; no typed characters are drawn by the effect. Remote shell response time still depends on the connection. Text is echoed by the real shell, preserving password entry, shortcuts, and interactive applications.

## Everyday tools

- **Shell profiles** save a profile name, shell executable, starting folder, and optional startup command. Selecting a profile opens a fresh shell session. Press **⌘⇧P** to manage profiles.
- **Searchable history** searches recent commands from `~/.zsh_history` (or `~/.bash_history`) as you type. Choose a result to put it on the prompt for review, then press Return to run it. Press **⌘⇧H**.
- **Command palette** searches Mew actions, including profiles, history, clear, and a fresh session. Press **⌘⇧K**.
- **Focus Mode** hides the Mew header and tab strip for a terminal-only workspace. Toggle it with **⌘⇧F**.
- **Tabs** keep multiple shell sessions open; press **⌘T** or use the **+** button. Switching tabs preserves each shell and its scrollback.
- **Split terminals** run two shells side by side or stacked. Click either pane to send typing to that shell; each pane keeps its own live session. Use the split menu at the right end of the tab strip; choose **Close Split** to return to one pane.
- **Clickable links and paths** open web links in your default browser and existing file paths in their default app when clicked in terminal output. Relative paths resolve from the shell's current folder.
- **Settings** (⌘,) include five color presets, custom background and accent colors, Menlo/Monaco/SF Mono/Courier fonts, and imported TTF, OTF, TTC, or OTC fonts. Imported font files are kept in Mew's Application Support folder and remain available after restarting. Text size and bar/block/underline carets are customizable too; changes update open panes and are saved on this Mac.
- **Editable shortcuts** live in Settings → Keyboard shortcuts. Click a shortcut and press a key combination with ⌘, ⌥, or ⌃ to change it.

## Run

Requirements: macOS 14 or later and Apple's Swift command line tools. The first build downloads SwiftTerm from GitHub.

```sh
cd "/Users/abela/mew"
mkdir -p .build/module-cache
CLANG_MODULE_CACHE_PATH="$PWD/.build/module-cache" \
SWIFTPM_MODULECACHE_OVERRIDE="$PWD/.build/module-cache" \
swift run
```

To create a clickable app bundle with the colored ASCII Mew icon in `build/Mew.app`:

```sh
./package-app.sh
```

The app icon is generated from the same portrait and colors in `Sources/Mew/MewAppearance.swift` each time you package the app. The PNG and ICNS files are saved in `Assets/`.

Each window has its own shell session. Closing the window ends its shell. Mew uses the shell listed in your `SHELL` environment variable, falling back to `/bin/zsh` when no shell is configured.

## Share with friends

Run `./package-share.sh` on your Mac. It rebuilds Mew and creates a ZIP in `dist/`. Upload that ZIP to a file-sharing service or a release page. Friends can download it, unzip it, and move `Mew.app` to Applications.

The current release is for Apple silicon Macs running macOS 14 or later. This build is not signed with a Developer ID or notarized, so macOS may show a security warning after download. Someone who trusts the copy they received can try opening it once, then use **System Settings → Privacy & Security → Open Anyway** if macOS offers that option. For a smoother public download, sign Mew with a Developer ID certificate and notarize it with Apple. Full Disk Access is granted separately by each Mac owner; it cannot be bundled into the download.
