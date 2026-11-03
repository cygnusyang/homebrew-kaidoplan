class KaidoCli < Formula
  desc "Project planning CLI and MCP server for AI coding agents"
  homepage "https://cygnusyang.github.io/Kaido/"
  url "https://github.com/cygnusyang/Kaido/releases/download/v#{version}/kaido-v#{version}-macos-universal.tar.gz"
  version "2.3.0"
  sha256 "c52c137d1f3dd7c929f51155bf769a252eb5534d9146fffd2c6890522dc94d14"
  # Kaido is proprietary since v2.3.0; Homebrew has no SPDX id for that.
  license :cannot_represent

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on macos: :sonoma

  def install
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/kaido", "project", "create", "brew-test", "--file", testpath/"t.kaido"
    assert_predicate testpath/"t.kaido", :exist?
  end
end
