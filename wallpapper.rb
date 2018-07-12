require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/tarball/1.0.0'
  sha1 '267dd2f5e2be441a0321a4f41f48e55cc335165f'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode # For working xcodebuild.

  def install
    system 'xcodebuild'
    bin.install 'build/Release/wallpapper'
  end
end