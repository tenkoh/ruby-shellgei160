files = Dir.glob('.tmp/*')

files.each do |file|
  text = File.read(file)
  puts "#{file} has #{text}" if text.match?(/^10$/)
end
