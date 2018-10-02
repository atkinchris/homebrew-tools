class Kubesecrets < Formula
  desc "Tool to manage secrets in Kubernetes with kubectl"
  homepage "https://github.com/atkinchris/kubesecrets"
  url "https://github.com/atkinchris/kubesecrets/releases/download/v0.1.2/kubesecrets-0.1.2.tar.gz"
  sha256 "d3c1301c477e1fe0bbcabc0bb70b75b0e5b13e802b9c3062982900c57b653937"
  version "0.1.2"

  bottle :unneeded

  depends_on "kubectl"

  def install
    bin.install "kubesecrets"
  end

  test do
    system "#{bin}/kubesecrets", "--version"
  end
end
