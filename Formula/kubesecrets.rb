class Kubesecrets < Formula
  desc "Tool to manage secrets in Kubernetes with kubectl"
  homepage "https://github.com/atkinchris/kubesecrets"
  url "https://github.com/atkinchris/kubesecrets/releases/download/v0.4.3/kubesecrets-0.4.3.tar.gz"
  sha256 "d46e32f1d7f2a0ead037e85a0d3fca39918a4fd51047e94583c891ff45fb4b22"

  bottle :unneeded

  depends_on "kubernetes-cli"

  def install
    bin.install "kubesecrets"
  end

  test do
    system "#{bin}/kubesecrets", "--version"
  end
end
