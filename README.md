#  Mew

A little Mew-themed home for your commands

## Install

Mew currently supports **Apple silicon Macs** running **macOS 14 Sonoma or later**.

```sh
brew install --cask importkaizen/mew/mew
```

Then open **Mew** from Applications or Spotlight.

## Keep it up to date

```sh
brew upgrade --cask mew
```

To remove Mew:

```sh
brew uninstall --cask mew
```

## A few Mew things

- An interactive zsh shell that uses your regular shell setup
- Built-in `help` and `credits` commands
- A Mew-inspired ASCII welcome and gentle color accents

## First launch

This early build is not signed and notarized with an Apple Developer ID, so macOS may ask you to confirm the first launch. In Finder, Control-click **Mew.app**, choose **Open**, then confirm. If macOS still blocks it, check **System Settings → Privacy & Security** for **Open Anyway**.

## About this tap

The cask and versioned app archive live in this repository. Homebrew checks the archive against the SHA-256 checksum in `Casks/mew.rb` before installing it.
