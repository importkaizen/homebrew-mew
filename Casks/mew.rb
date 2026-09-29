cask "mew" do
  version "0.1.9"
  sha256 "c5ef759d38fb5c5597c955de178d88f6e6de96f1eacee749fe6a2af78ddad785"

  url "https://raw.githubusercontent.com/importkaizen/homebrew-mew/main/dist/Mew-#{version}-macOS-AppleSilicon.zip"
  name "Mew"
  desc "A Mew-themed macOS terminal"
  homepage "https://github.com/importkaizen/homebrew-mew"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Mew.app"
end
