text = File.open('qdata/31/iampen.txt').read
puts text.gsub(/(<strong>)([^<]+)/) { "#{Regexp.last_match(1)}#{Regexp.last_match(2).upcase}" }
