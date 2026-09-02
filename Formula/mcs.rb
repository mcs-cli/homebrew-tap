class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.9.2/mcs-2026.9.2-macos-universal.tar.gz"
  sha256 "058e81ac05c17b24e2a568ff8eb27b2db8a9af537358dbf7bab1ac22cdac02d0"
  version "2026.9.2"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
