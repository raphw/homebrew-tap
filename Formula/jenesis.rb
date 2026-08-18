# Generated with JReleaser 1.25.0

class Jenesis < Formula
  desc "A Java-native build tool."
  homepage "https://github.com/raphw/jenesis"
  url "https://github.com/raphw/jenesis/releases/download/v0.10.4/jenesis-0.10.4.zip"
  version "0.10.4"
  sha256 "8091a1aa8f982846296601f3a438bf661e5d1783006ff88d49e706efe18be949"
  license "Apache-2.0"

  depends_on "openjdk@25"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jenesis" => "jenesis"
  end

  test do
    output = shell_output("#{bin}/jenesis --version")
    assert_match "0.10.4", output
  end
end
