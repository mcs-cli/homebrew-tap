class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.4.9/mcs-2026.4.9-macos-universal.tar.gz"
  sha256 "db586c99e383c7290bee6d6e98116f78abd22079a30b4795b8bb97e97738290a"
  version "2026.4.9"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
