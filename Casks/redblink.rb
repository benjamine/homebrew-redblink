cask "redblink" do
  version "0.1.0"
  sha256 "41ece2637704f1b0ba2b1b43cd56fb7223ff10629cab083637228521c6609942"

  url "https://github.com/benjamine/homebrew-redblink/releases/download/v#{version}/redblink-#{version}.zip"
  name "redblink"
  desc "Minimal native macOS meeting recorder"
  homepage "https://github.com/benjamine/homebrew-redblink"

  depends_on macos: :sequoia

  app "redblink.app"

  command_wrapper "redblink",
                  executable: "#{appdir}/redblink.app/Contents/MacOS/redblink",
                  args: ["--cli"]

  caveats <<~EOS
    Experimental distribution: this build is ad-hoc signed, not Developer ID-signed or notarized.
    macOS Gatekeeper may require manual approval on first launch. Only proceed if you trust this
    release; do not disable Gatekeeper or remove the download quarantine.

    Microphone and screen-recording permissions may need to be granted again after updates.
    Your recordings in ~/Library/Application Support/RedBlink/Recordings are not removed on uninstall.
  EOS

  livecheck do
    url :url
    strategy :github_latest
  end
end
