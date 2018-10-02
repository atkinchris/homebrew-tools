class Kubesecrets < Formula
  desc "Tool to manage secrets in Kubernetes with kubectl"
  homepage "https://github.com/atkinchris/kubesecrets"
  url "https://github.com/atkinchris/kubesecrets/releases/download/v0.2.1/kubesecrets-0.2.1.tar.gz"
  sha256 "7ec6369c17fcec2be5de5d298525523a076456938c8309d5a638dae6be8c1c53"
  version "0.2.1"

  bottle :unneeded

  depends_on "kubectl"

  def install
    bin.install "kubesecrets"
  end

  test do
    system "#{bin}/kubesecrets", "--version"
  end
end
