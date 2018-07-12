require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/tarball/1.0.0'
  sha256 'fb0032448d83087534be489669096632a43b00050f640f041160905ff1c5f170'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode # For working xcodebuild.

  def install
    system 'xcodebuild'
    bin.install 'build/Release/wallpapper'
  end
end