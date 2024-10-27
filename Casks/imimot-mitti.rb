cask "imimot-mitti" do
  version "2.8.5"
  sha256 :no_check
  
  url "https://imimot.com/versions/download.php?product=mitti2&format=dmg"
  name "Mitti"
  desc "The easy-to-use yet powerful video cue software for macOS"
  homepage "https://imimot.com/mitti/"

  livecheck do
    url :url
    strategy :header_match
    regex(/Mitti(\d+(?:\.\d+)+)_\d+\.dmg/i)
  end

  depends_on macos: ">= :catalina"
  
  app "Mitti.app"
end

