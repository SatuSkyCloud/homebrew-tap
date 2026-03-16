# typed: false
# frozen_string_literal: true

class OneCtl < Formula
  desc "CLI for SatuSky Cloud Platform"
  homepage "https://github.com/SatuSkyCloud/1ctl"
  version "0.5.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SatuSkyCloud/1ctl/releases/download/v#{version}/1ctl-#{version}-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/SatuSkyCloud/1ctl/releases/download/v#{version}/1ctl-#{version}-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SatuSkyCloud/1ctl/releases/download/v#{version}/1ctl-#{version}-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/SatuSkyCloud/1ctl/releases/download/v#{version}/1ctl-#{version}-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "1ctl"
  end

  test do
    assert_match "1ctl version", shell_output("#{bin}/1ctl --version")
  end
end
