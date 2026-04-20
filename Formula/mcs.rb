class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.4.20/mcs-2026.4.20-macos-universal.tar.gz"
  sha256 "c127663bbb64fd8bc486df862c79010b0e052c7b082aeea6e8910455ae841030"
  version "2026.4.20"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
