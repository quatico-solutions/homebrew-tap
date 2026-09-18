class Bb < Formula
  desc "Bitbucket Cloud CLI — gh-style wrapper around the REST API v2"
  homepage "https://github.com/quatico-solutions/agent-skills"
  url "https://raw.githubusercontent.com/quatico-solutions/agent-skills/working-with-bitbucket-api@1.10.0/cli/bb"
  sha256 "669a42661861b092941d2bd26a0f265fe769d8dc1962ee726f67f2c579a04586"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb --version")
  end
end
