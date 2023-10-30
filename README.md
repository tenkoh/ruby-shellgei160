# Rubyの独習。シェル・ワンライナー160本ノック（[#shellgei160](https://twitter.com/hashtag/shellgei160?src=hashtag_click&f=live)）の例題をRubyで解いてみる

技術評論社から出版された「[シェル・ワンライナー160本ノック](https://gihyo.jp/book/2021/978-4-297-12267-6)」の例題をRubyで解いてみるリポジトリです。

## 開発環境について
最低限のFormatter, Linterを使えるようにdevcontainerを設定済みです。使用方法は以下の通り。

### 初回起動時
1. Gemfile.lockがあったら念のため削除しておく。
1. VS Codeでこのフォルダを開く。devcontainerで開き直すか聞かれるので、促されるまま従う。
1. もろもろの構築が終わるのを待つ
1. Terminalを開き、`bundle install`する。これによりFormatter, Linterが導入される。

### 2回目以降の起動時
ただ開くだけです

## License
MIT

## Author
tenkoh

もちろん問題部分は書籍「シェル・ワンライナー160本ノック」の著者に帰属します。
