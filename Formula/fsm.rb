# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fsm < Formula
  desc "Lightweight service mesh for Kubernetes East-West and North-South traffic management"
  homepage "https://flomesh.io/fsm"
  version "1.4.10"
  license "Apache 2.0"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    on_intel do
      url "https://github.com/flomesh-io/fsm/releases/download/v1.4.10/fsm_v1.4.10_darwin_x86_64.tar.gz"
      sha256 "8a207c015ebe9f2abf4de45604a101f2ec218796bd82fff9c81fab45de907473"

      def install
        bin.install "fsm"
      end
    end
    on_arm do
      url "https://github.com/flomesh-io/fsm/releases/download/v1.4.10/fsm_v1.4.10_darwin_arm64.tar.gz"
      sha256 "c974baeae226eb255fbe8b23f5b54cc6dbdeabeea98a471225a5e442ada5c02b"

      def install
        bin.install "fsm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/flomesh-io/fsm/releases/download/v1.4.10/fsm_v1.4.10_linux_x86_64.tar.gz"
        sha256 "23c98570f0c50269307a397fb36c4c357c9de971ce797773909457840604e5d7"

        def install
          bin.install "fsm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/flomesh-io/fsm/releases/download/v1.4.10/fsm_v1.4.10_linux_arm64.tar.gz"
        sha256 "2d230e0edf2e12f6a3cefbcab158ba4b8b17e93097a774ab5f3d7730c735d423"

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
