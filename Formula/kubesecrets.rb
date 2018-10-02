class Kubesecrets < Formula
  desc "Tool to manage secrets in Kubernetes with kubectl"
  homepage "https://github.com/atkinchris/kubesecrets"
  url "https://github.com/atkinchris/kubesecrets/releases/download/v0.2.0/kubesecrets-0.2.0.tar.gz"
  sha256 "a2ff33b66f8e0353afedf955ef5c96e649f990d3062cdfaadef8f76e4b59f5c1"
  version "0.2.0"

  bottle :unneeded

  depends_on "kubectl"

  def install
    bin.install "kubesecrets"
  end

  test do
    system "#{bin}/kubesecrets", "--version"
  end
end
