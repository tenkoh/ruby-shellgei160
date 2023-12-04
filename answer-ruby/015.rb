# prob.1
# 与えられた文字列を全て大文字にする
raw = 'I am a perfect human.'
puts raw.upcase

# prob.2
# 与えられた文字列をハイフンで区切った上でタイトルケースにする
# 残念ながらRubyにはタイトルケースを実現するメソッドがないので、capitalizeを駆使する
# (Railsにはtitleizeというメソッドがあるとかなんとか)
raw = 'pen-pineapple-apple-pen'
puts raw.split('-').map(&:capitalize).join(' ')
