class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.3.25/mcs-2026.3.25-macos-universal.tar.gz"
  sha256 "6530c21bba30aea5bc5ededef3baec73df3f78d579c6b0ab0b40047304f41f58"
  version "2026.3.25"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
