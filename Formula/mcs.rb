class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.4.11/mcs-2026.4.11-macos-universal.tar.gz"
  sha256 "fdf13957485f1bf1a6f5ac6504dc958f8b45e461e381f7cf14d142242f472057"
  version "2026.4.11"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
