class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.10.29/mcs-2026.10.29-macos-universal.tar.gz"
  sha256 "935ed92ccf9e7e46386c202b7e75e8b63460226d016b6c14823a0fd540eaa57f"
  version "2026.10.29"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
