class Mcs < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.3.28/mcs-2026.3.28-macos-universal.tar.gz"
  sha256 "c0da8ea87bcd1ab6bfebb2f98fee64c96414987bfc4f0f5897c07f55b7ff0db6"
  version "2026.3.28"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
