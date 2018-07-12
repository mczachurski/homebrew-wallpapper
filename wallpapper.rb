require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/mczachurski/wallpapper'
  url 'https://github.com/mczachurski/wallpapper/tarball/1.0.0'
  sha256 '5197790cf6a50cce2a3f9d72a7b123edc3b56c8aa43696dedd7d5b4cb96fa461'

  head 'https://github.com/mczachurski/wallpapper.git'

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    xcodebuild "-configuration", "Release", "SYMROOT=build"
    bin.install 'build/Release/wallpapper'
  end
end