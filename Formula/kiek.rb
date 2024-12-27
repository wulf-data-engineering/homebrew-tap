class Kiek < Formula
  version '1.0.0'
  desc "kiek helps you to look into Kafka topics."
  homepage "https://github.com/wulf-data-engineering/kiek"

  if OS.mac?
      url "https://github.com/wulf-data-engineering/kiek/releases/download/v1.0.0/kiek-aarch64-apple-darwin.tar.gz"
      sha256 "51e157a5f5f77cd392da2f92f4e784bd259e1ad8cbed4a6ed203b1bbce6c9ef6"
  elsif OS.linux?
      url "https://github.com/wulf-data-engineering/kiek/releases/download/v1.0.0/kiek-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "786ccb9cb649fce2b1e2efdfba5e47c4458f02bacf72a2fd4277cf5bdca5bf31"
  end

  conflicts_with "kiek"

  def install
    bin.install "kiek"
#     bash_completion.install "complete/kiek.bash"
#     fish_completion.install "complete/kiek.fish"
#     zsh_completion.install "complete/_kiek"
  end
end
