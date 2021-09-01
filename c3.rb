class C3 < Formula
  homepage "http://www.c3-lang.org/"
  url "https://github.com/c3lang/c3c/releases/download/v0.2.3.2-alpha/c3c-v2.3.2-alpha.tar.gz"
  sha256 "feb5abe68cc105192aad1d6627b4ded372d0c1ebaee9a52ca39106304531b28a"

  depends_on "cmake"
  depends_on "llvm"
  depends_on "gnu-tar"
  depends_on "gzip"
  
  def install
    system "cmake -DCMAKE_BUILD_TYPE=Release ."
    system "make"
    bin.install "c3c"
    prefix.install Dir["lib"]
    prefix.install Dir["resources/editor_plugins/*"]
  end
end
