class Statslogger < Formula
  desc "Tool to log system stats to stdout or a file"
  homepage "https://github.com/atkinchris/statslogger"
  url "https://github.com/atkinchris/statslogger/releases/download/v0.3.1/statslogger-0.3.1.tar.gz"
  sha256 "a8390499e5bfce249b150df1fcae51cea858feaccae7461d130be8a2fe74cbfd"
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
        <string>statslogger.ndjson</string>
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
