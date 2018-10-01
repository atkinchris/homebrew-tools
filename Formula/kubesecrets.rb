class Kubesecrets < Formula
  desc "Tool to manage secrets in Kubernetes with kubectl"
  homepage "https://github.com/atkinchris/kubesecrets"
  url "https://github.com/atkinchris/kubesecrets/releases/download/v0.1.1/kubesecrets-0.1.1.tar.gz"
  sha256 "ffd778607807843dc9a0f9d21453ec1f253724c6326a2fbecf229acd559d43a6"
  version "0.1.1"

  bottle :unneeded

  depends_on "kubectl"

  def install
    bin.install "kubesecrets"
  end

  test do
    system "#{bin}/kubesecrets", "--version"
  end
end
