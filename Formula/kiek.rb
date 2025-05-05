class Kiek < Formula
  version '1.4.0'
  desc "kiek helps you to look into Kafka topics."
  homepage "https://github.com/wulf-data-engineering/kiek"

  if OS.mac?
      url "https://github.com/wulf-data-engineering/kiek/releases/download/v#{version}/kiek-aarch64-apple-darwin.tar.gz"
      sha256 "7662f3114e9d3c2dc0adad2319b029ad7e1e2aff0709154bb155d4c7bbbeef74"
  elsif OS.linux?
      url "https://github.com/wulf-data-engineering/kiek/releases/download/v#{version}/kiek-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7636898bf03ddb6fb4b46bc5edcb72c5edc20547c45d94be9a1c64987067ca13"
  end

  conflicts_with "kiek"

  def install
    bin.install "kiek"
    zsh_completion.install "completions/_kiek"
    bash_completion.install "completions/kiek.bash"
    fish_completion.install "completions/kiek.fish"
  end
end
