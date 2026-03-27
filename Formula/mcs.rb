class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.3.27/mcs-2026.3.27-macos-universal.tar.gz"
  sha256 "29f19f55dbd0ea2d589ea1f4f4b747fb150238ae6b8c9c4db56c1a1bfe8419e8"
  version "2026.3.27"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
