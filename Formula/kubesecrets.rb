class Kubesecrets < Formula
  desc "Tool to manage secrets in Kubernetes with kubectl"
  homepage "https://github.com/atkinchris/kubesecrets"
  url "https://github.com/atkinchris/kubesecrets/releases/download/v0.4.2/kubesecrets-0.4.2.tar.gz"
  sha256 "8571e5a7e8cdb5b009c421b65d665e59c901aba64aa8eaa213463d3dd1461317"

  bottle :unneeded

  depends_on "kubernetes-cli"

  def install
    bin.install "kubesecrets"
  end

  test do
    system "#{bin}/kubesecrets", "--version"
  end
end
