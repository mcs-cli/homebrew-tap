class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.10.21/mcs-2026.10.21-macos-universal.tar.gz"
  sha256 "d09c6041a27c644f8db31fb3b0bee9ab9e0629bcdb18ae4e8e23fd367ab0cf18"
  version "2026.10.21"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
