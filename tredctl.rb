# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tredctl < Formula
  desc "CLI client for the 'Tamper Resistant Encrypted Data' protocol.
"
  homepage "https://github.com/bryk-io/tred-cli"
  version "0.7.0"

  on_macos do
    on_intel do
      url "https://github.com/bryk-io/tred-cli/releases/download/v0.7.0/tredctl_0.7.0_darwin_amd64.tar.gz"
      sha256 "0cb9965f029cb143d0d31006fe3d943e6d6298e68e9f894b52e5a6e99b84e5fa"

      def install
        bin.install "tredctl"
        output = Utils.popen_read("#{bin}/tredctl completion bash")
        (bash_completion/"tredctl").write output
        output = Utils.popen_read("#{bin}/tredctl completion zsh")
        (zsh_completion/"_tredctl").write output
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/bryk-io/tred-cli/releases/download/v0.7.0/tredctl_0.7.0_darwin_arm64.tar.gz"
      sha256 "044293dea3b1a30b4d5f6dce3f12e0a3a6ec8f8a5c465ff4b3c0dcc75c328ffc"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bryk-io/tred-cli/releases/download/v0.7.0/tredctl_0.7.0_linux_amd64.tar.gz"
        sha256 "1de1f0989d6b26cb314c31762297126795b679fc18ea6d6251b783a3950de078"

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
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bryk-io/tred-cli/releases/download/v0.7.0/tredctl_0.7.0_linux_arm64.tar.gz"
        sha256 "6dbb73f3b7bcbb2af1f4d8a21d8fc4cf39f438660b6e550783411c0b30e8ea4d"

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
  end

  test do
    system "#{bin}/tredctl version"
  end
end
