# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fsm < Formula
  desc "Lightweight service mesh for Kubernetes East-West and North-South traffic management"
  homepage "https://flomesh.io/fsm"
  version "1.4.11"
  license "Apache 2.0"

  depends_on "git" => :optional
  depends_on "go" => :optional

  on_macos do
    on_intel do
      url "https://github.com/flomesh-io/fsm/releases/download/v1.4.11/fsm_v1.4.11_darwin_x86_64.tar.gz"
      sha256 "f2cb6d567cfae5867d6ecf8cd85926efc1e783f68b28a470bd708edfb140c97b"

      def install
        bin.install "fsm"
      end
    end
    on_arm do
      url "https://github.com/flomesh-io/fsm/releases/download/v1.4.11/fsm_v1.4.11_darwin_arm64.tar.gz"
      sha256 "bb6c37336d0d8c597e2b995b33fd4257e1320134629a3d6b087ca327fa778117"

      def install
        bin.install "fsm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/flomesh-io/fsm/releases/download/v1.4.11/fsm_v1.4.11_linux_x86_64.tar.gz"
        sha256 "6e48a5635332dc6aae4184e2c8fd114574d3484d0a7167fe22518312e39fb23f"

        def install
          bin.install "fsm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/flomesh-io/fsm/releases/download/v1.4.11/fsm_v1.4.11_linux_arm64.tar.gz"
        sha256 "a81d5d735ca645571963fe60546d40f5eb5188c1faeeb53808e9f72a4535f6d7"

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
