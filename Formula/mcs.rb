class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.10.25/mcs-2026.10.25-macos-universal.tar.gz"
  sha256 "5ad280f1899ba9ab4a92543c48ddb8b9c23dd07c1100260eecaa3da8f2557cce"
  version "2026.10.25"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
