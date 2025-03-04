# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fsm < Formula
  desc "Lightweight service mesh for Kubernetes East-West and North-South traffic management"
  homepage "https://flomesh.io/fsm"
  version "1.5.0-alpha.10"
  license "Apache 2.0"

  depends_on "git" => :optional
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flomesh-io/fsm/releases/download/v1.5.0-alpha.10/fsm_v1.5.0-alpha.10_darwin_x86_64.tar.gz"
      sha256 "5aa7613c4b2bbf42412a353f5e802eb404eb2f85b3640119da2f09aff2412aa4"

      def install
        bin.install "fsm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/flomesh-io/fsm/releases/download/v1.5.0-alpha.10/fsm_v1.5.0-alpha.10_darwin_arm64.tar.gz"
      sha256 "bf86f1d087caa3f351a8486ee9e770b33cf001a27a932a3e40c3ef9053c52318"

      def install
        bin.install "fsm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/flomesh-io/fsm/releases/download/v1.5.0-alpha.10/fsm_v1.5.0-alpha.10_linux_x86_64.tar.gz"
        sha256 "e8cc9346081e1ed7f6e6863a21f50e3fb91c22b6e2fc344efa5d89f0a2b3f926"

        def install
          bin.install "fsm"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/flomesh-io/fsm/releases/download/v1.5.0-alpha.10/fsm_v1.5.0-alpha.10_linux_arm64.tar.gz"
        sha256 "108cbcf0e629251a3146583062b992b81955759e44c8b2ec687efec23fbb6f43"

        def install
          bin.install "fsm"
        end
      end
    end
  end

  test do
    system "#{bin}/fsm version"
  end
end
