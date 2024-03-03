# ディレクトリは含めずにファイルだけの一覧を取得する
target = 'qdata/21'
exclude = File.join(target, 'dir_b/d')

# 再帰探索のために**/*を使う
puts Dir.glob("#{target}/**/*").reject { |f| File.directory?(f) || f.match(exclude) }.sort
