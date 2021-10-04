class GitKustomizeDiff < Formula
  desc "Diff tool for Kustomize"
  homepage "https://github.com/dtaniwaki/git-kustomize-diff"
  baseurl = "https://github.com/dtaniwaki/git-kustomize-diff/releases/download"
  version "v0.1.5"
  archive_name = "git-kustomize-diff_darwin_x86_64.tar.gz"
  url baseurl + "/" + version + "/" + archive_name
  sha256 "b5d1dc44615b4a9eb1fe8cfedeb8b59825c58cfb05256a538da323ed33953f71"
  license "Apache-2.0"
  bottle :unneeded
  depends_on "git"

  def install
    bin.install "git-kustomize-diff"
  end

  test do
    system "#{bin}/git-kustomize-diff"
  end
end
