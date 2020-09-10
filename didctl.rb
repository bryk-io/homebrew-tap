# This file was generated by GoReleaser. DO NOT EDIT.
class Didctl < Formula
  desc "Reference client implementation for the 'bryk' DID method. The platform allows
entities to fully manage Decentralized Identifiers as described on the version
v1.0 of the specification.
"
  homepage "https://github.com/bryk-io/did-method"
  version "0.7.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bryk-io/did-method/releases/download/v0.7.0/didctl_0.7.0_darwin_amd64.tar.gz"
    sha256 "01577984d0ea83984c9d29d1aa2239a61a45cf9c8e05d1540cb8880145645dfd"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bryk-io/did-method/releases/download/v0.7.0/didctl_0.7.0_linux_amd64.tar.gz"
      sha256 "a1ddfc7dd1f106342bf2cb87d803cfb9c46b9ceb8decc47c201a2f20f2667b35"
    end
  end

  def install
    bin.install "didctl"
    output = Utils.popen_read("#{bin}/didctl completion bash")
    (bash_completion/"didctl").write output
    output = Utils.popen_read("#{bin}/didctl completion zsh")
    (zsh_completion/"_didctl").write output
    prefix.install_metafiles
  end

  test do
    system "#{bin}/didctl version"
  end
end
