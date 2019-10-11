class StatsLogger < Formula
  desc "Tool to log system stats to stdout or a file"
  homepage "https://github.com/atkinchris/statslogger"
  url "https://github.com/atkinchris/statslogger/releases/download/v0.1.0/statslogger-0.1.0.tar.gz"
  sha256 "929e04ebb092c5001b61a2fffa72d78537b9bfd95c5a8e85524163a26b638c4e"
  bottle :unneeded
  depends_on :unneeded
  def install
    bin.install "statslogger"
  end
  test do
    system "#{bin}/statslogger", "--version"
  end
end
