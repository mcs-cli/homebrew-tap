class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.9.9/mcs-2026.9.9-macos-universal.tar.gz"
  sha256 "024502c33e950cadde6c645323901ce5a3dfdff7fd5d57ea33c0cef0ef0af488"
  version "2026.9.9"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
