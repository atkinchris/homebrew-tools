class Kubesecrets < Formula
  desc "Tool to manage secrets in Kubernetes with kubectl"
  homepage "https://github.com/atkinchris/kubesecrets"
  url "https://github.com/atkinchris/kubesecrets/releases/download/v0.3.0/kubesecrets-0.3.0.tar.gz"
  sha256 "16721962805722f07a1252d6b25bebdb95247291216ae6ca95b45814fa8bcb94"

  bottle :unneeded

  depends_on "kubectl"

  def install
    bin.install "kubesecrets"
  end

  test do
    system "#{bin}/kubesecrets", "--version"
  end
end
