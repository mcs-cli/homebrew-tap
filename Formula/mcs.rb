class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.3.31/mcs-2026.3.31-macos-universal.tar.gz"
  sha256 "ff4345bf22a04d2b945f8ed7f75ea742f2e1ff90ea6ccf2423990277cc6cd0b6"
  version "2026.3.31"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
