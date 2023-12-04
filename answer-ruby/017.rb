lines = File.open('/etc/passwd', 'r').readlines

File.open('a', 'w') do |f|
  lines.each do |line|
    f.puts line
    puts line
  end
end
