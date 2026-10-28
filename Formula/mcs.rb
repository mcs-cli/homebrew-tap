class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.10.28/mcs-2026.10.28-macos-universal.tar.gz"
  sha256 "2e4dbe7e577020305fb2b5a317c615b9e16406f2b47a9eee3ba6be5df30c3eb5"
  version "2026.10.28"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
