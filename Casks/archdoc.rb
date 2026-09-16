# Written by hand for v0.1.0, in the shape GoReleaser generates. GoReleaser
# rewrites this file on every stable release of ollieread/archdoc, from the
# homebrew_casks section of its .goreleaser.yaml.
cask "archdoc" do
  version "0.1.0"

  on_macos do
    on_arm do
      sha256 "084898c37b13fb2b114a33decdcbe709d3b9e31428c30304173567c46d26c105"
      url "https://github.com/ollieread/archdoc/releases/download/v#{version}/archdoc_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "fc2de6e324673b772228b36457912cf664b57a6587c89a5dbf1347f38f184c31"
      url "https://github.com/ollieread/archdoc/releases/download/v#{version}/archdoc_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "d07ec46751dcef6e4afceea4024c980d68e476d254055f079ffe54821abbfc33"
      url "https://github.com/ollieread/archdoc/releases/download/v#{version}/archdoc_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "4bba0dd41f23969736a4ce8d49a0b816015d866a8dbaf3576c1dd57918968dd0"
      url "https://github.com/ollieread/archdoc/releases/download/v#{version}/archdoc_#{version}_linux_amd64.tar.gz"
    end
  end

  name "archdoc"
  desc "Manage a specification repository of RFCs, ADRs, spec pages and refs"
  homepage "https://github.com/ollieread/archdoc"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "archdoc"

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/archdoc"]
    end
  end
end
