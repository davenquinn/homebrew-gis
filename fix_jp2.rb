# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class FixJp2 < Formula
  desc "Formula to fix PDS JPEG2000 projection information for modern GDAL"
  homepage "https://isis.astrogeology.usgs.gov/IsisSupport/index.php?topic=2339.0"
  url "https://trac.osgeo.org/gdal/zip-attachment/ticket/2706/"
  version "1.0"
  sha256 "71737d1f4f91c667a72948338a27dfd44fa1eb27165cf9cf7df43f33143a5664"

  def install
    system "g++", "-o","fix_jp2","fix_jp2.cpp"
    bin.install "fix_jp2"
  end
end
