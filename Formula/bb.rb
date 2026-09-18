class Bb < Formula
  desc "Bitbucket Cloud CLI — gh-style wrapper around the REST API v2"
  homepage "https://github.com/quatico-solutions/agent-skills"
  url "https://raw.githubusercontent.com/quatico-solutions/agent-skills/working-with-bitbucket-api@1.9.0/skills/working-with-bitbucket-api/bin/bb"
  sha256 "04bd0143ee963bd5d8bd11da10fabf1a754ac048dee2b68673cbfd2f7ab8e8ab"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb --version")
  end
end
