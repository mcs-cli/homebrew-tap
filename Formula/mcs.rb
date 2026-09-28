class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.9.28/mcs-2026.9.28-macos-universal.tar.gz"
  sha256 "9ec1ff2b17e1c5e27d9193d5f8ad3e3319eb245d19189a0758e3af9d36406cb2"
  version "2026.9.28"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
