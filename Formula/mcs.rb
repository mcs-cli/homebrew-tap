class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.4.1/mcs-2026.4.1-macos-universal.tar.gz"
  sha256 "9001bbf366b5067cba5546534d60f55efb7d9427239e9f40519def60777c1179"
  version "2026.4.1"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
