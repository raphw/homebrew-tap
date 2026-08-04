# Generated with JReleaser 1.25.0 at 2026-08-04T19:53:36.474097036Z

class Jenesis < Formula
  desc "A Java-native build tool."
  homepage "https://github.com/raphw/jenesis"
  url "https://github.com/raphw/jenesis/releases/download/v0.10.0/jenesis-0.10.0.zip"
  version "0.10.0"
  sha256 "5a658d5636567ff50b48bcdc7822d8a8b9c248ccd70f9b01919636f5464b96c3"
  license "Apache-2.0"

  depends_on "openjdk@25"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jenesis" => "jenesis"
  end

  test do
    output = shell_output("#{bin}/jenesis --version")
    assert_match "0.10.0", output
  end
end
