files = File.open("qdata/1/files.txt", "r") do |f|
  f.readlines.map(&:chomp)
end

re = /\.exe$/
puts "## use select"
puts files.select{ |file| file.match(re) }

puts "## use grep"
puts files.grep(re)

puts "## use keep_if"
puts files.keep_if { |file| file.match(re) }

puts "## use delete_if"
puts files.delete_if { |file| !file.match(re) }

puts "## use reject"
puts files.reject { |file| !file.match(re) }

puts "## use find_all"
puts files.find_all { |file| file.match(re) }

puts "## use map"
puts files.map { |file| file.match(re) ? file : nil }

puts "## use inject"
puts files.inject([]) { |result, file| file.match(re) ? result << file : result }
