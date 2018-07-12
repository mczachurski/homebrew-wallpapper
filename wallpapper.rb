require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/tarball/1.0.0'
  sha256 'a1fdcec46aff12ffb22e766f28a8c88ebfc1e254bcdf63484b3535f62c9b0cf6'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    swift "build", "--configuration", "release"
    bin.install '.build/x86_64-apple-macosx10.10/release/wallpapper'
  end
endd