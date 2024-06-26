# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Govanity < Formula
  desc "Basic 'Remote Import Path' server for Golang packages.
"
  homepage "https://github.com/bryk-io/go-vanity"
  version "0.1.8"

  on_macos do
    on_intel do
      url "https://github.com/bryk-io/go-vanity/releases/download/v0.1.8/govanity_0.1.8_darwin_amd64.tar.gz"
      sha256 "c01ae1b5897a7c64cfcef4f1f7161cc6f19d295502e31bdbb331fdf075081208"

      def install
        bin.install "govanity"
      end
    end
    on_arm do
      url "https://github.com/bryk-io/go-vanity/releases/download/v0.1.8/govanity_0.1.8_darwin_arm64.tar.gz"
      sha256 "c2cbc8cf383cbb8e187b4d9c43257dfaf71d00292b776f1d9cb70ccae62a104e"

      def install
        bin.install "govanity"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bryk-io/go-vanity/releases/download/v0.1.8/govanity_0.1.8_linux_amd64.tar.gz"
        sha256 "c072361cbb5733992693732fcf015756aa4217b6e3d6887f7941057bd02c6e29"

        def install
          bin.install "govanity"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bryk-io/go-vanity/releases/download/v0.1.8/govanity_0.1.8_linux_arm64.tar.gz"
        sha256 "8e9d6c7581c5255ce41d170f3e8089b3187dc8fc6720f5d4bae337f38e3708e8"

        def install
          bin.install "govanity"
        end
      end
    end
  end

  test do
    system "#{bin}/govanity -h"
  end
end
