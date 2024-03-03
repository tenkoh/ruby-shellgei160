# 例題通り、ログインシェルの終了時に実行するには`.bash_logout`に以下を追記するのが良いかな
# rubyでホームディレクトリは自動的に展開されないので、`File.expand_path`で展開する必要がある
File.open(File.expand_path('~/.bash_logout'), 'a') do |f|
  f.puts('rm ~/tmp/*')
end

# スクリプト実行終了時の処理は以下のように書くこともできる
at_exit do
  system('rm ~/tmp/*')
end
