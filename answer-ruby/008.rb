logs = File.open('qdata/8/access.log', 'r').readlines

# am? receives a record including 02/Jun/2016:15:04:05 +0900 time format
def am?(record)
  re = %r{\[\d{2}/[a-zA-Z]{3}/\d{4}:(\d{2}):}
  h = record.match(re)[1].to_i
  h < 12
end

n_am = logs.count { |log| am?(log) }
n_pm = logs.size - n_am
puts "午前: #{n_am}\n午後: #{n_pm}"
