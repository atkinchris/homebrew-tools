class StatsLogger < Formula
  desc "Tool to log system stats to stdout or a file"
  homepage "https://github.com/atkinchris/statslogger"
  url "https://github.com/atkinchris/statslogger/releases/download/v0.1.0/statslogger-0.1.0.tar.gz"
  sha256 "4277b1d8c65b351256486db3bde3895dc605e5f50fccbaec17ca376b13e45f1c"
  bottle :unneeded
  def install
    bin.install "statslogger"
  end
  test do
    system "#{bin}/statslogger", "--version"
  end
end
