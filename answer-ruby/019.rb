# 1234-5678-9012-3456 というカード番号の上位8桁をxxxx-xxxx-9012-3456のようにマスクする
# なお、今回は結果のファイル書き込みは割愛
srcpath = 'qdata/19/cardno'
puts File.open(srcpath, 'r').read.gsub(/^(\d{4}-\d{4})/, 'xxxx-xxxx')
