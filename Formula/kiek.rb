class kiek < Formula
  version '1.0.0'
  sha256_mac '00fe0c74ae8379f49f66b399d1ecbff8fda2dff9d4eb10e7e3867cbce472cf43'
  sha256_linux 'f72fb01d99cc8fef6390bfb8176445d77c54bee65d94b7042a9e30a988a3c5fa'
  desc "kiek helps you to look into Kafka topics."
  homepage "https://github.com/wulf-data-engineering/kiek"

  if OS.mac?
      url "https://github.com/wulf-data-engineering/kiek/releases/download/v#{version}/kiek-aarch64-apple-darwin.tar.gz"
      sha256 "#{sha256_mac}"
  elsif OS.linux?
      url "https://github.com/wulf-data-engineering/kiek/releases/download/v#{version}/kiek-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "#{sha256_linux}"
  end

  conflicts_with "kiek"

  def install
    bin.install "kiek"
    zsh_completion.install "completions/_kiek"
    bash_completion.install "completions/kiek.bash"
    fish_completion.install "completions/kiek.fish"
  end
end
