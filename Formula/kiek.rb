class Kiek < Formula
  version '1.1.0'
  desc "kiek helps you to look into Kafka topics."
  homepage "https://github.com/wulf-data-engineering/kiek"

  if OS.mac?
      url "https://github.com/wulf-data-engineering/kiek/releases/download/v#{version}/kiek-aarch64-apple-darwin.tar.gz"
      sha256 "ce6fae3edc16d1967c881833f0e0d9fbc08aece3c3e3ffad7f59651eb48bd04e"
  elsif OS.linux?
      url "https://github.com/wulf-data-engineering/kiek/releases/download/v#{version}/kiek-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "acaf1998515a7b4d54c6e7e878283c9e022ba7cf457dd9893a775dda234d402a"
  end

  conflicts_with "kiek"

  def install
    bin.install "kiek"
    zsh_completion.install "completions/_kiek"
    bash_completion.install "completions/kiek.bash"
    fish_completion.install "completions/kiek.fish"
  end
end
