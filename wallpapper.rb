require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/archive/1.7.4.tar.gz'
  sha256 '5d099a7b09948307ccab4aca046e90ef5456c13cb826498a5a871205adb57afd'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/release/wallpapper'
    bin.install './.build/release/wallpapper-exif'
  end
end
