replacements = {
  /^すず/ => '鈴木',
  /^さと/ => '佐藤',
  /^やま/ => '山田'
}

# xargs -n2 相当のことをやるのって意外と大変
lines = File.open('qdata/11/gijiroku.txt', 'r').readlines
            .map(&:chomp)
            .reject(&:empty?)
pairs = lines.each_slice(2).to_a
# ここまで

# あとは置換やらなんやら
text = pairs.map { |pair| pair.join(':') }.join("\n\n")
replacements.each { |k, v| text.gsub!(k, v) }
puts text
