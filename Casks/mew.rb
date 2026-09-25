cask "mew" do
  version "0.1.0"
  sha256 "7e81e9025a5220f17f1e3af15991a6a97f6e3bf93e40d632c2444839ae2819f7"

  url "https://raw.githubusercontent.com/importkaizen/homebrew-mew/main/dist/Mew-#{version}-macOS-AppleSilicon.zip"
  name "Mew"
  desc "A Mew-themed macOS terminal"
  homepage "https://github.com/importkaizen/homebrew-mew"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Mew.app"
end
