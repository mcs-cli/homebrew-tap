class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.4.10/mcs-2026.4.10-macos-universal.tar.gz"
  sha256 "4eaf5122d0630ec014d24ed8764f0fad5c1dab1ae395f86f274f5340dfb18f32"
  version "2026.4.10"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
