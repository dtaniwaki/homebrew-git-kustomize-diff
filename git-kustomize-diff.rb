class GitKustomizeDiff < Formula
  desc "Diff tool for Kustomize"
  homepage "https://github.com/dtaniwaki/git-kustomize-diff"
  baseurl = "https://github.com/dtaniwaki/git-kustomize-diff/releases/download"
  version "v0.1.4"
  archive_name = "git-kustomize-diff_darwin_x86_64.tar.gz"
  url baseurl + "/" + version + "/" + archive_name
  sha256 "aea9dc08c73e8f38add052df590f1a9a063f2c7204ee508ccda22d9c099ce619"
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
