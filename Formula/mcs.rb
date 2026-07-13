class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.7.13/mcs-2026.7.13-macos-universal.tar.gz"
  sha256 "a396b6e9ad339ee030d35f1366463ddd24931d3b2edc67680fe84c81014aa3d9"
  version "2026.7.13"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
