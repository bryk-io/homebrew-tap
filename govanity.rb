# This file was generated by GoReleaser. DO NOT EDIT.
class Govanity < Formula
  desc "Basic 'Remote Import Path' server for Golang packages.
"
  homepage "https://github.com/bryk-io/go-vanity"
  version "0.1.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bryk-io/go-vanity/releases/download/v0.1.3/govanity_0.1.3_darwin_amd64.tar.gz"
    sha256 "aa7c35031a5b46e0f7223a7eac6af8db40207ee2a2482e82c52b3d6a45c57cb3"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bryk-io/go-vanity/releases/download/v0.1.3/govanity_0.1.3_linux_amd64.tar.gz"
      sha256 "b3de2813d5089a4792556f4d5ffbfb9cc5b345857634c1eec3834a84ec76f37b"
    end
  end

  def install
    bin.install "govanity"
  end

  test do
    system "#{bin}/govanity -h"
  end
end