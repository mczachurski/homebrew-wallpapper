require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/archive/1.7.1.tar.gz'
  sha256 '01a22890cfd917e5688aeae769c4e74fa59ba1c25894b49363d9afc3975c016c'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/release/wallpapper'
    bin.install './.build/release/wallpapper-exif'
  end
end
