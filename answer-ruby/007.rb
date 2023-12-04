def food?(item_name)
  item_name.start_with?('*')
end

def tax_rate(date, item_name)
  return 0.08 if date < '20191001'

  food?(item_name) ? 0.08 : 0.1
end

def taxed_price(date, item_name, price)
  price = price&.to_i
  tax = (price * tax_rate(date, item_name)).floor
  price + tax
end

lines = File.open('qdata/7/kakeibo.txt').readlines

total_price = lines.reduce(0) do |sum, line|
  record = line.split(' ')
  raise 'invalid record' if record.size != 3

  sum + taxed_price(*record)
end

puts total_price
