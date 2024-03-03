text = 'XYZ'
suffix = 'ABC'
(0..suffix.length - 1).each do |i|
  puts text + suffix[0..i]
end
puts text

def growing_suffix(suffix)
  s = ''
  suffix.each_char do |c|
    s += c
    yield s
  end
end

growing_suffix(suffix) do |s|
  puts text + s
end
puts text
