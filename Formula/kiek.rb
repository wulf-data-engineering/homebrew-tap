class kiek < Formula
  version '0.1.0'
  sha256_mac '1234'
  sha256_linux '2345'
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
