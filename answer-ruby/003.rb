# .tmp以下のファイル一覧をリネームする.
# 例: 1 -> 0000001
# 例: 10 -> 0000010
# 例: 1000000 -> 1000000

# 事前に.tmp内に連番のファイルを作成してある前提
# cd .tmp
# seq 1000000 | xargs -P2 touch

files = Dir.glob('.tmp/*')
files.each do |before|
  # String.rjustを使う方法
  # after = before.gsub(/\d+/) { |s| s.rjust(7, '0') }

  # formatを使う方法。sprintfも同じ結果を与えそうだが、Linterはformatを推奨している
  after = before.gsub(/\d+/) { |s| format('%07d', s.to_i) }

  # File.rename(before, after)を実行しても良いが、面倒なのでbefore/afterを出力するだけにする
  puts "#{before} -> #{after}"
end
