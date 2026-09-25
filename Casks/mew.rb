cask "mew" do
  version "0.1.2"
  sha256 "476fdcfa9f4f2d06a32c2f15af409e3733a4f9bd7d01ce9e208393427fca985a"

  url "https://raw.githubusercontent.com/importkaizen/homebrew-mew/main/dist/Mew-#{version}-macOS-AppleSilicon.zip"
  name "Mew"
  desc "A Mew-themed macOS terminal"
  homepage "https://github.com/importkaizen/homebrew-mew"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Mew.app"
end
