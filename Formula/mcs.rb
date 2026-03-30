class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.3.30/mcs-2026.3.30-macos-universal.tar.gz"
  sha256 "dc3ba4bba8e1eae353f62df76e679ecc2e81da476a67a0fefc8b91b1e12aa8ea"
  version "2026.3.30"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
