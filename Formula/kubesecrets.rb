class Kubesecrets < Formula
  desc "Tool to manage secrets in Kubernetes with kubectl"
  homepage "https://github.com/atkinchris/kubesecrets"
  url "https://github.com/atkinchris/kubesecrets/releases/download/v0.4.5/kubesecrets-0.4.5.tar.gz"
  sha256 "1ae5f12ca5803ca8bba41d1a27fb4c07ad4cd071dcd10ad490b1ac3fde874bbf"

  bottle :unneeded

  depends_on "kubernetes-cli"

  def install
    bin.install "kubesecrets"
  end

  test do
    system "#{bin}/kubesecrets", "--version"
  end
end
