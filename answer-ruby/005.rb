lines = File.open('./qdata/5/ntp.conf').readlines

lines.each do |line|
  fields = line.split(' ')
  next if fields.size < 2

  puts fields[1] if fields[0] == 'pool'
end
