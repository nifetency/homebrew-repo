# This file was generated by GoReleaser. DO NOT EDIT.
class Nifectl < Formula
  desc "Deploys, manages and scales applications"
  homepage "https://www.nife.io"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nifetency/nife-release/releases/download/prod-v-0.3.6/nifectl-prod-v0.3.6-darwin-amd64.tar.gz"
      sha256 "6F3796B3C66E3A515BABA5F398809DD8A8F0C00C4B14F62674A09398DBF0E99D"
    end
    if Hardware::CPU.arm?
      url "https://github.com/nifetency/nife-release/releases/download/prod-v-0.3.6/nifectl-prod-v0.3.6-darwin-amd64.tar.gz"
      sha256 "6F3796B3C66E3A515BABA5F398809DD8A8F0C00C4B14F62674A09398DBF0E99D"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nifetency/nife-release/releases/download/prod-v-0.3.6/nifectl-prod-v0.3.6-linux-386.tar.gz"
      sha256 "7379EF6BB14EBF0DCF1EC811C0AFFE0C0AE20178935D661CEB3CA8C36B2F580E"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nifetency/nife-release/releases/download/prod-v-0.3.6/nifectl-prod-v0.3.6-linux-amd64.tar.gz"
      sha256 "1CC17DF1B5FD21244458C842604398E97D1B8281A01FC4F6FFAF98276A8E0AE5"
    end
  end

  def install
    bin.install "nifectl"
    bin.install_symlink "nifectl" => "nife"
  end

  test do
    system "#{sbin}/nifectl version"
  end
end
