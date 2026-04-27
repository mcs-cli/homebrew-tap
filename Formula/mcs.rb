class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.4.27/mcs-2026.4.27-macos-universal.tar.gz"
  sha256 "d8f834686399b1d7e8bad814ec0f5712c57ffd5f4192a871eebc4f30502236ef"
  version "2026.4.27"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
