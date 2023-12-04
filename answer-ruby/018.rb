shells = File.open('/etc/passwd', 'r').readlines.map do |line|
  fields = line.split(':')
  nil if fields.size < 7
  fields[6].chomp
end

# group_by(&:itself)だけでは各キーごとに要素をまとめた配列が得られるだけなので
# transform_values(&:count)で各要素の数を数える必要がある
counts = shells.sort.group_by(&:itself).transform_values(&:count)
counts.each do |shell, count|
  puts "#{shell} #{count}"
end
