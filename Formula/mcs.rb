class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.10.31/mcs-2026.10.31-macos-universal.tar.gz"
  sha256 "669ef17c61ec7e38e1363e3b1091fa1140d3bcf32ed9e8bb9e401c5d82214634"
  version "2026.10.31"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
