class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.10.9/mcs-2026.10.9-macos-universal.tar.gz"
  sha256 "65ab377dc7c85d26ba5ce1e1de99bd195b7c34688e8c14ab706ac6682c97d5e4"
  version "2026.10.9"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
