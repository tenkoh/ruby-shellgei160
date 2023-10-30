# frozen_string_literal: true

# ここが一番意外なんだけど、このパスはファイル保存場所からの相対パスではなく、実行場所からの相対パスになる
target_dir = './qdata/2/img'

def png2jpeg(filepath)
  # ここに変換処理を書く
  # mini_magickを使うと簡単にできるらしいが、今回はパス！
  # とりあえず、ファイル名を変更するだけにする

  # basenameの第2引数に拡張子を指定すると、拡張子を除いたファイル名を取得できる
  # 指定しない時は拡張子を含むファイル名が返る
  puts "#{File.basename(filepath, '.*')}.jpg"
end

files = Dir.glob("#{target_dir}/*.png")
files.map { |file| png2jpeg(file) }
