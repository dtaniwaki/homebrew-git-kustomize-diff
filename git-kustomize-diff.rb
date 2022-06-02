class GitKustomizeDiff < Formula
  desc "Diff tool for Kustomize"
  homepage "https://github.com/dtaniwaki/git-kustomize-diff"
  baseurl = "https://github.com/dtaniwaki/git-kustomize-diff/releases/download"
  version "v0.1.6"
  license "Apache-2.0"
  bottle :unneeded
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      archive_name = "git-kustomize-diff_darwin_arm64.tar.gz"
      url baseurl + "/" + version + "/" + archive_name
      sha256 "12c6c09cd92f5ac12bb05ee650ef9200993d84c502cb5d8f065624b4227fcb6e"
    end
    if Hardware::CPU.intel?
      archive_name = "git-kustomize-diff_darwin_x86_64.tar.gz"
      url baseurl + "/" + version + "/" + archive_name
      sha256 "9fc5de0838dfecb412fc9d38a1e473e2851c66f6ca7dec6270089880b42e0fe1"
    end
  end

  def install
    bin.install "git-kustomize-diff"
  end

  test do
    system "#{bin}/git-kustomize-diff"
  end
end
