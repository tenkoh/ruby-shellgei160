target = '/usr'
puts Dir.glob("#{target}/*").map { |f| File.basename(f) }.sort.join(' ')
