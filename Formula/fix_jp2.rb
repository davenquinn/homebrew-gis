class FixJp2 < Formula
  desc "Tool to fix PDS JPEG2000 projection information for modern GDAL (predominantly for HiRISE Mars imagery)"
  homepage "https://isis.astrogeology.usgs.gov/IsisSupport/index.php?topic=2339.0"
  url "https://trac.osgeo.org/gdal/zip-attachment/ticket/2706/"
  version "1.0"
  sha256 "71737d1f4f91c667a72948338a27dfd44fa1eb27165cf9cf7df43f33143a5664"

  def install
    system "g++", "-o","fix_jp2","fix_jp2.cpp"
    bin.install "fix_jp2"
  end
end
