cask "mew" do
  version "0.1.12"
  sha256 "5b700557c9e8522119cb1e9933425fe23cdcb6e22329bc56e2cf33bbdffd9655"

  url "https://raw.githubusercontent.com/importkaizen/homebrew-mew/main/dist/Mew-#{version}-macOS-AppleSilicon.zip"
  name "Mew"
  desc "A Mew-themed macOS terminal"
  homepage "https://github.com/importkaizen/homebrew-mew"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Mew.app"
end
