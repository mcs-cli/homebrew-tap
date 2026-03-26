class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.3.26/mcs-2026.3.26-macos-universal.tar.gz"
  sha256 "7d60ce44eca7102a5defd372c145a9a15fbded50d3b8f696b2ffc4b03aaf83d9"
  version "2026.3.26"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
