cask "mew" do
  version "0.1.6"
  sha256 "17d45fb7560a0d14ef10ada132c986bdc1aa9e1c2326001b6504cf7ae593bde0"

  url "https://raw.githubusercontent.com/importkaizen/homebrew-mew/main/dist/Mew-#{version}-macOS-AppleSilicon.zip"
  name "Mew"
  desc "A Mew-themed macOS terminal"
  homepage "https://github.com/importkaizen/homebrew-mew"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Mew.app"
end
