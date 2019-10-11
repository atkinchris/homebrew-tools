class Statslogger < Formula
  desc "Tool to log system stats to stdout or a file"
  homepage "https://github.com/atkinchris/statslogger"
  url "https://github.com/atkinchris/statslogger/releases/download/v0.1.0/statslogger-0.1.0.tar.gz"
  sha256 "6bf543be6bcb9b795af4d1167410cdb9e6ab8c0df7883dc4fbaf8be45c637d29"
  bottle :unneeded
  def install
    bin.install "statslogger"
  end
  test do
    system "#{bin}/statslogger", "--version"
  end
end
