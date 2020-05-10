require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/archive/1.5.0.tar.gz'
  sha256 '32e3a22261d4c3b767ce293a17b29e2ae27a03456c606d6d703468886f1c37ef'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/x86_64-apple-macosx/release/wallpapper'
  end
end
