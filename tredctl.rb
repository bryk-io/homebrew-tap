# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tredctl < Formula
  desc "CLI client for the 'Tamper Resistant Encrypted Data' protocol.
"
  homepage "https://github.com/bryk-io/tred-cli"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bryk-io/tred-cli/releases/download/v0.6.0/tredctl_0.6.0_darwin_amd64.tar.gz"
      sha256 "ee2fabc62c1bcd6ae4e0ad0c56bd8df02d4b39dd9e60d6b3f444d58f60233b04"

      def install
        bin.install "tredctl"
        output = Utils.popen_read("#{bin}/tredctl completion bash")
        (bash_completion/"tredctl").write output
        output = Utils.popen_read("#{bin}/tredctl completion zsh")
        (zsh_completion/"_tredctl").write output
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bryk-io/tred-cli/releases/download/v0.6.0/tredctl_0.6.0_darwin_arm64.tar.gz"
      sha256 "f262721967851b1e9c2651e58930a89d94477b7dd1b46929ca6611952fb400ee"

      def install
        bin.install "tredctl"
        output = Utils.popen_read("#{bin}/tredctl completion bash")
        (bash_completion/"tredctl").write output
        output = Utils.popen_read("#{bin}/tredctl completion zsh")
        (zsh_completion/"_tredctl").write output
        prefix.install_metafiles
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bryk-io/tred-cli/releases/download/v0.6.0/tredctl_0.6.0_linux_arm64.tar.gz"
      sha256 "265882add4cd69411a03284303a50af2e9964ee7ab22b5eb51e8248e6cd08486"

      def install
        bin.install "tredctl"
        output = Utils.popen_read("#{bin}/tredctl completion bash")
        (bash_completion/"tredctl").write output
        output = Utils.popen_read("#{bin}/tredctl completion zsh")
        (zsh_completion/"_tredctl").write output
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bryk-io/tred-cli/releases/download/v0.6.0/tredctl_0.6.0_linux_amd64.tar.gz"
      sha256 "c689be7f7dbcbe7b0a3aa003678ee650c1a88ba533457557f5730d05121dc51a"

      def install
        bin.install "tredctl"
        output = Utils.popen_read("#{bin}/tredctl completion bash")
        (bash_completion/"tredctl").write output
        output = Utils.popen_read("#{bin}/tredctl completion zsh")
        (zsh_completion/"_tredctl").write output
        prefix.install_metafiles
      end
    end
  end

  test do
    system "#{bin}/tredctl version"
  end
end
