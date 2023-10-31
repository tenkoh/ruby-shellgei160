files = Dir.glob('.tmp/*')

files.each do |file|
  # readlinesで読み取った結果は配列になる
  # 各要素は改行記号も含むので、必要に応じてchompする
  content = File.open(file, 'r').readlines
  puts "#{file} has #{content}" if content.any? { |line| line.chomp == '10' }
end
