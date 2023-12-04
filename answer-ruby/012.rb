# 引数があればそれを変数nに、なければ標準入力から受け取る
n = ARGV[0] || gets.chomp
begin
  n = Integer(n)
rescue StandardError
  raise ArgumentError, '引数は数値にしてください'
end

puts n * 2
