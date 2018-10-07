class Kubesecrets < Formula
  desc "Tool to manage secrets in Kubernetes with kubectl"
  homepage "https://github.com/atkinchris/kubesecrets"
  url "https://github.com/atkinchris/kubesecrets/releases/download/v0.5.0/kubesecrets-0.5.0.tar.gz"
  sha256 "fda971ef672fa46b0d5ea931723e19f2ed27b7776b88fd574f64dbbfe474fbc9"

  bottle :unneeded

  depends_on "kubernetes-cli"

  def install
    bin.install "kubesecrets"
  end

  test do
    system "#{bin}/kubesecrets", "--version"
  end
end
