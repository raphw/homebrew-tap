# Generated with JReleaser 1.25.0

class Jenesis < Formula
  desc "A Java-native build tool."
  homepage "https://github.com/raphw/jenesis"
  url "https://github.com/raphw/jenesis/releases/download/v0.10.1/jenesis-0.10.1.zip"
  version "0.10.1"
  sha256 "82e5e706adab3925ecbfbc6fd1ee29dac28f5e4e575f2ea1ec9ad373dccd45dc"
  license "Apache-2.0"

  depends_on "openjdk@25"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jenesis" => "jenesis"
  end

  test do
    output = shell_output("#{bin}/jenesis --version")
    assert_match "0.10.1", output
  end
end
