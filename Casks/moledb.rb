cask "moledb" do
  version "0.1.7"
  sha256 "a188662ff5442aa5380291f2950ab7e632f5158f6ed841bc21d4f773b1f60731"

  url "https://github.com/MarkKiepe/database-viewer/releases/download/v#{version}/MoleDB-#{version}-arm64.dmg"
  name "MoleDB"
  desc "Local-first desktop database GUI"
  homepage "https://moledb.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "MoleDB.app"

  zap trash: [
    "~/Library/Application Support/Database Viewer",
    "~/Library/Application Support/database-viewer",
    "~/Library/Application Support/databae-viewer",
    "~/Library/Application Support/MoleDB",
    "~/Library/Application Support/moledb",
    "~/Library/Caches/com.databaseviewer.viewer",
    "~/Library/Caches/com.databaseviewer.viewer.ShipIt",
    "~/Library/Caches/Database Viewer",
    "~/Library/Caches/database-viewer-updater",
    "~/Library/Caches/MoleDB",
    "~/Library/Caches/MoleDB-updater",
    "~/Library/Caches/moledb-updater",
    "~/Library/HTTPStorages/com.databaseviewer.viewer",
    "~/Library/HTTPStorages/com.databaseviewer.viewer.binarycookies",
    "~/Library/Logs/Database Viewer",
    "~/Library/Logs/MoleDB",
    "~/Library/Preferences/com.databaseviewer.viewer.helper.plist",
    "~/Library/Preferences/com.databaseviewer.viewer.plist",
    "~/Library/Saved Application State/com.databaseviewer.viewer.savedState",
  ]
end
