class Statslogger < Formula
  desc "Tool to log system stats to stdout or a file"
  homepage "https://github.com/atkinchris/statslogger"
  url "https://github.com/atkinchris/statslogger/releases/download/v0.2.0/statslogger-0.2.0.tar.gz"
  sha256 "393e0938171373d787d1345e99ad524a2b49151a6d84040af4f54341137c81b7"
  bottle :unneeded
  def install
    bin.install "statslogger"
  end
  test do
    system "#{bin}/statslogger", "--version"
  end
end
