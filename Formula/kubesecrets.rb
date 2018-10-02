class Kubesecrets < Formula
  desc "Tool to manage secrets in Kubernetes with kubectl"
  homepage "https://github.com/atkinchris/kubesecrets"
  url "https://github.com/atkinchris/kubesecrets/releases/download/v0.4.0/kubesecrets-0.4.0.tar.gz"
  sha256 "0a8b2e1ca6ee7ece569f6b50efd26d4c6ed1d56d15e08f2ad0e0ce10050afc20"

  bottle :unneeded

  depends_on "kubectl"

  def install
    bin.install "kubesecrets"
  end

  test do
    system "#{bin}/kubesecrets", "--version"
  end
end
