# mail,blog,eng,www,help,sub,ns,
# robotics,ojisan,yamada,ueda,nakamura,tashiro,blacknon
# co.jp,com,tech,org,jp,go.jp,com.tw,asia

first = ['mail', 'blog', 'eng', 'www', 'help', 'sub', 'ns', '']
second = %w[robotics ojisan yamada ueda nakamura tashiro blacknon]
third = %w[co.jp com tech org jp go.jp com.tw asia]

Random.srand(2022)

all = first.product(second, third).map { |elem| elem.join('.') }.shuffle
puts(all[...100].map { |elem| elem.gsub(/^\./, '') })
