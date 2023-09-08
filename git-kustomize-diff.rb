class GitKustomizeDiff < Formula
  desc "Diff tool for Kustomize"
  homepage "https://github.com/dtaniwaki/git-kustomize-diff"
  baseurl = "https://github.com/dtaniwaki/git-kustomize-diff/releases/download"
  version "v0.2.0"
  license "Apache-2.0"
  bottle :unneeded
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      archive_name = "git-kustomize-diff_darwin_arm64.tar.gz"
      url baseurl + "/" + version + "/" + archive_name
      sha256 "77af07a0eaac73b728d642361a26eb3587b04fe37c85cf79a29ea267883352ef"
    end
    if Hardware::CPU.intel?
      archive_name = "git-kustomize-diff_darwin_x86_64.tar.gz"
      url baseurl + "/" + version + "/" + archive_name
      sha256 "4d15d54bc5c7aea55e84659c8616244e6489159a17275591b7718925a4a97ac9"
    end
  end

  def install
    bin.install "git-kustomize-diff"
  end

  test do
    system "#{bin}/git-kustomize-diff"
  end
end
