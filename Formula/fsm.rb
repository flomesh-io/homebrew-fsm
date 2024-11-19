# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fsm < Formula
  desc "Lightweight service mesh for Kubernetes East-West and North-South traffic management"
  homepage "https://flomesh.io/fsm"
  version "1.4.10"
  license "Apache 2.0"

  depends_on "git" => :optional
  depends_on "go" => :optional

  on_macos do
    on_intel do
      url "https://github.com/flomesh-io/fsm/releases/download/v1.4.10/fsm_v1.4.10_darwin_x86_64.tar.gz"
      sha256 "1e9cc7dcd03c21c43231099e1de3a6ae49d1c25c3552353c66d4b8a012445777"

      def install
        bin.install "fsm"
      end
    end
    on_arm do
      url "https://github.com/flomesh-io/fsm/releases/download/v1.4.10/fsm_v1.4.10_darwin_arm64.tar.gz"
      sha256 "3631cc35de2944ad6ca3f663b8935eb8f6637bcb38ad8fb98a962934fdb53708"

      def install
        bin.install "fsm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/flomesh-io/fsm/releases/download/v1.4.10/fsm_v1.4.10_linux_x86_64.tar.gz"
        sha256 "f520ddf534dad23568e731c51100453475afd60ff96c1d736163358e843901ca"

        def install
          bin.install "fsm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/flomesh-io/fsm/releases/download/v1.4.10/fsm_v1.4.10_linux_arm64.tar.gz"
        sha256 "7c775f58230766dfad421be40271744534938d05fe03784b645139b51e24f681"

        def install
          bin.install "fsm"
        end
      end
    end
  end

  test do
    system "#{bin}/fsm --version"
  end
end
