class Kubesecrets < Formula
  desc "Tool to manage secrets in Kubernetes with kubectl"
  homepage "https://github.com/atkinchris/kubesecrets"
  url "https://github.com/atkinchris/kubesecrets/releases/download/v0.1.0/kubesecrets-0.1.0.tar.gz"
  sha256 "d0eb938749256a73e4a114eae8703445262bd6b97b034d9bec21fc07fef4514d"
  version "0.1.0"

  bottle :unneeded

  depends_on "kubectl"

  def install
    bin.install "kubesecrets"
  end

  test do
    system "#{bin}/kubesecrets", "--version"
  end
end
