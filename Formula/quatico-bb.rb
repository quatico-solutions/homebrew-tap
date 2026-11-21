class QuaticoBb < Formula
  desc "Bitbucket Cloud CLI — gh-style wrapper around the REST API v2"
  homepage "https://github.com/quatico-solutions/agent-skills"
  url "https://raw.githubusercontent.com/quatico-solutions/agent-skills/working-with-bitbucket-api@1.15.1/cli/bb"
  sha256 "01e1ef942a1093cf069db1f8c2c66e9cbb9476ca8fdd034a5c11a04fb4f4a915"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb --version")
  end
end
