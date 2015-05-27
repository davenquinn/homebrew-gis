class Mdenoise < Formula
  desc "Formula for Xianfang Sun's denoising algorithm, which can be applied to DEMs and other noisy point data"
  homepage "http://www.cs.cf.ac.uk/meshfiltering/index_files/Page342.htm"
  url "http://www.cs.cf.ac.uk/meshfiltering/index_files/Doc/mdsource.zip"

  version "1.0"

  sha256 "d0bf1276b8a411e23e2acce94902b40a90b8020385486ca2472ab2cb788d27c9"

  def install
    system "g++", "-o","mdenoise","mdenoise.cpp","triangle.c"
    bin.install "mdenoise"
    # Prepare manfile entry
    mv "README","mdenoise.1"
    man1.install "mdenoise.1"
  end
end
