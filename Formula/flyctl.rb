# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.167"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.167/flyctl_0.0.167_macOS_x86_64.tar.gz"
    sha256 "8407ebe9b8c76948fc2b65f13c1410a185e70a75b99cc57a03c53f70ebc53646"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.167/flyctl_0.0.167_Linux_x86_64.tar.gz"
    sha256 "36eaeeaa0107b0ece6b1f4dfa8d0a9d914967bbdcd20f59e5beab9f0c1f22019"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.167/flyctl_0.0.167_Linux_arm64.tar.gz"
    sha256 "467a2343145ed50ec24bd812ecf8acea44b7b79ee27247cfede96fa6a55026dd"
  end

  def install
    bin.install "flyctl"
    bin.install_symlink "flyctl" => "fly"
  end

  test do
    system "#{bin}/flyctl version"
  end
end
