class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.7.29/mcs-2026.7.29-macos-universal.tar.gz"
  sha256 "e4fa24090e3dffa12f15cd235b3bbd113d022eabdd364f864009f6f5b46d9fb2"
  version "2026.7.29"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
