cask "mew" do
  version "0.1.1"
  sha256 "6c42776c0ee68098402f9a5373071bd73812c9c1b7a21c5870b9f7d0d49687dc"

  url "https://raw.githubusercontent.com/importkaizen/homebrew-mew/main/dist/Mew-#{version}-macOS-AppleSilicon.zip"
  name "Mew"
  desc "A Mew-themed macOS terminal"
  homepage "https://github.com/importkaizen/homebrew-mew"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Mew.app"
end
