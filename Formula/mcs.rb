class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.4.12/mcs-2026.4.12-macos-universal.tar.gz"
  sha256 "f80ef4ea88c853256f981560ce0d107f3384864e825a694d44f3ed7852923590"
  version "2026.4.12"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
