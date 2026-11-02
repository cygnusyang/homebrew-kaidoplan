class KaidoCli < Formula
  desc "Project planning CLI and MCP server for AI coding agents"
  homepage "https://cygnusyang.github.io/Kaido/"
  url "https://github.com/cygnusyang/Kaido/releases/download/v#{version}/kaido-v#{version}-macos-universal.tar.gz"
  version "2.2.0"
  sha256 "e84394415b95d1d0ba5a1a2b55bf50786ec69b3961fef5c21be8a5862f71cce4"
  license "PolyForm-Noncommercial-1.0.0"

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
