# Generated with JReleaser 1.25.0

class Jenesis < Formula
  desc "A Java-native build tool."
  homepage "https://github.com/raphw/jenesis"
  url "https://github.com/raphw/jenesis/releases/download/v0.10.9/jenesis-0.10.9.zip"
  version "0.10.9"
  sha256 "4b2864162159e4b8031fdc6fd266d704df7dff86a64d157a2b431fab63c0cf54"
  license "Apache-2.0"

  depends_on "openjdk@25"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jenesis" => "jenesis"
  end

  test do
    output = shell_output("#{bin}/jenesis --version")
    assert_match "0.10.9", output
  end
end
