cask "mew" do
  version "0.1.7"
  sha256 "b50fd2727ebcfa0c88459d695f034b2a788b46479d90122b012896ac15ec387b"

  url "https://raw.githubusercontent.com/importkaizen/homebrew-mew/main/dist/Mew-#{version}-macOS-AppleSilicon.zip"
  name "Mew"
  desc "A Mew-themed macOS terminal"
  homepage "https://github.com/importkaizen/homebrew-mew"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Mew.app"
end
