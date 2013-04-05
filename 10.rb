# おじいさんの時計
def grandfathersClock
  h = Time.now.hour % 12
  h = 12 if h.zero?

  h.times{yield}
end

# プログラムロガー
def log(description)
  puts "開始 \"#{description}\"..."
  ret = yield
  puts "...\"#{description}\" 終了, 返り値は: #{ret}"
end


# プログラムロガー改良版
$nestingDepth = 0
def log_improved(description)
  indent = "  " * $nestingDepth
  $nestingDepth += 1

  puts "#{indent}開始 \"#{description}\"..."
  ret = yield
  puts "#{indent}...\"#{description}\" 終了, 返り値は: #{ret}"

  $nestingDepth -= 1
  ret
end