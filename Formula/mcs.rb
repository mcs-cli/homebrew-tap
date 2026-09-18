class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.9.18/mcs-2026.9.18-macos-universal.tar.gz"
  sha256 "ac4ce786fb77f9406b05f957ae6328a532631a5075f0b73e01a12919b4dbfcfc"
  version "2026.9.18"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
