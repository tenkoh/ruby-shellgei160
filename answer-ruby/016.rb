text = 'XYZ'
suffix = 'ABC'
(0..suffix.length - 1).each do |i|
  puts text + suffix[0..i]
end
puts text
