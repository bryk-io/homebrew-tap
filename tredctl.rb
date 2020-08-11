# This file was generated by GoReleaser. DO NOT EDIT.
class Tredctl < Formula
  desc "CLI client for the 'Tamper Resistant Encrypted Data' protocol.
"
  homepage "https://github.com/bryk-io/tred-cli"
  version "0.4.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bryk-io/tred-cli/releases/download/v0.4.3/tredctl_0.4.3_darwin_amd64.tar.gz"
    sha256 "dc0b41443049b102ae10f8454a4c05a48c8be58fafcfcbbb0892ae5aaf90e1c9"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bryk-io/tred-cli/releases/download/v0.4.3/tredctl_0.4.3_linux_amd64.tar.gz"
      sha256 "cf68abc9f4cf8f2fff5c00937484af31f21fcc9e7b672cffccc7a0d3a6a1b7ec"
    end
  end

  def install
    bin.install "tredctl"
    output = Utils.popen_read("#{bin}/tredctl completion bash")
    (bash_completion/"tredctl").write output
    output = Utils.popen_read("#{bin}/tredctl completion zsh")
    (zsh_completion/"_tredctl").write output
    prefix.install_metafiles
  end

  test do
    system "#{bin}/tredctl version"
  end
end
