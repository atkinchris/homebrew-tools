class Statslogger < Formula
  desc "Tool to log system stats to stdout or a file"
  homepage "https://github.com/atkinchris/statslogger"
  url "https://github.com/atkinchris/statslogger/releases/download/v0.9.0/statslogger-0.9.0.tar.gz"
  sha256 "99965b31ab27f4f4b2f2d244bd3cf0bfbaeeb99883e690d46fcad253374b09d3"
  bottle :unneeded

  plist_options :startup => true
  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
        <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{opt_bin}/statslogger</string>
        <string>--time</string>
        <string>15</string>
        <string>--output</string>
        <string>.</string>
      </array>
      <key>RunAtLoad</key>
      <true />
      <key>KeepAlive</key>
      <false />
      <key>WorkingDirectory</key>
      <string>#{var}/log</string>
      <key>StandardOutPath</key>
      <string>/dev/null</string>
      <key>StandardErrorPath</key>
      <string>#{var}/log/statslogger_err.log</string>
    </dict>
    </plist>
    EOS
  end

  def install
    bin.install "statslogger"
  end

  test do
    system "#{bin}/statslogger", "--version"
  end
end
