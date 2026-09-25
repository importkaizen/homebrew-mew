cask "mew" do
  version "0.1.4"
  sha256 "43197912d8fe0fef05fc4e75a133a13966e65a20fea60a3c27ffec9d39bd0998"

  url "https://raw.githubusercontent.com/importkaizen/homebrew-mew/main/dist/Mew-#{version}-macOS-AppleSilicon.zip"
  name "Mew"
  desc "A Mew-themed macOS terminal"
  homepage "https://github.com/importkaizen/homebrew-mew"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Mew.app"
end
