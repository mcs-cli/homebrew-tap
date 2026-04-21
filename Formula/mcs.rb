class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.4.21/mcs-2026.4.21-macos-universal.tar.gz"
  sha256 "9cb2659007865fc0926729bd1270c732bf8aeed4ef759b84af68279d45bd1fec"
  version "2026.4.21"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
