class QuaticoBb < Formula
  desc "Bitbucket Cloud CLI — gh-style wrapper around the REST API v2"
  homepage "https://github.com/quatico-solutions/agent-skills"
  url "https://raw.githubusercontent.com/quatico-solutions/agent-skills/working-with-bitbucket-api@1.11.2/cli/bb"
  sha256 "66266ce5e672b3f62626077a346937d3b257c4a99f5c05bd42f2e89c53905425"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb --version")
  end
end
