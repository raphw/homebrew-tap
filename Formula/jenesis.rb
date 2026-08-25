# Generated with JReleaser 1.25.0

class Jenesis < Formula
  desc "A Java-native build tool."
  homepage "https://github.com/raphw/jenesis"
  url "https://github.com/raphw/jenesis/releases/download/v0.10.8/jenesis-0.10.8.zip"
  version "0.10.8"
  sha256 "a9be20857cec192b819d8236f5863577fd6b29c368a542f14c42751f0f54e667"
  license "Apache-2.0"

  depends_on "openjdk@25"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jenesis" => "jenesis"
  end

  test do
    output = shell_output("#{bin}/jenesis --version")
    assert_match "0.10.8", output
  end
end
