require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/archive/1.7.3.tar.gz'
  sha256 '517965884f29adfa76aa11bc1f7589eb53605c695f8e7c799545861dc13e5d27'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/release/wallpapper'
    bin.install './.build/release/wallpapper-exif'
  end
end
