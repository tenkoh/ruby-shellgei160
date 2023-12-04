# 文字列の配列から、start条件とend条件の間の要素を抜き出す
re_start = %r{24/Dec/2016 21:..:..}
re_end = %r{25/Dec/2016 03:..:..}

records = File.readlines('qdata/9/log_range.log')
idx_start = records.index { |record| record.match(re_start) }
idx_end = records.index { |record| record.match(re_end) }
puts records[idx_start..idx_end]
