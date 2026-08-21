# Generated with JReleaser 1.25.0

class Jenesis < Formula
  desc "A Java-native build tool."
  homepage "https://github.com/raphw/jenesis"
  url "https://github.com/raphw/jenesis/releases/download/v0.10.7/jenesis-0.10.7.zip"
  version "0.10.7"
  sha256 "0149cd11c24a6e4aed57610092459fe34c6c78504b689390cdc258308d56bf3f"
  license "Apache-2.0"

  depends_on "openjdk@25"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jenesis" => "jenesis"
  end

  test do
    output = shell_output("#{bin}/jenesis --version")
    assert_match "0.10.7", output
  end
end
