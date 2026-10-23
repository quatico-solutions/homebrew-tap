class QuaticoBb < Formula
  desc "Bitbucket Cloud CLI — gh-style wrapper around the REST API v2"
  homepage "https://github.com/quatico-solutions/agent-skills"
  url "https://raw.githubusercontent.com/quatico-solutions/agent-skills/working-with-bitbucket-api@1.12.0/cli/bb"
  sha256 "2eeceb1e90e703437fc4573ccf194577f28a5a3d6bad29746d9ac4d76993961d"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb --version")
  end
end
