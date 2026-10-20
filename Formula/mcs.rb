class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.10.20/mcs-2026.10.20-macos-universal.tar.gz"
  sha256 "b9697559ddd6a4100966a4f3c925e88b3d42a077f4e345ba00304590758e969c"
  version "2026.10.20"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
