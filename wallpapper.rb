require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/archive/1.2.0.tar.gz'
  sha256 'a7028a4a688b7400397daa326bc78196de56d2df4dfbbc61392c0b464b0c21ed'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install '.build/x86_64-apple-macosx10.10/release/wallpapper'
  end
end
