class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.10.30/mcs-2026.10.30-macos-universal.tar.gz"
  sha256 "75a6b9546736abd96f99d9dfecb0a02454ce5a5a4cee4fa7c0b120605b9b5a1c"
  version "2026.10.30"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
