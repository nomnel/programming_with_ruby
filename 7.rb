# 入力された値をアルファベット順に並べ替えて出力する
ary = []
while true
  elem = gets.chomp

  break if elem == ''

  ary << elem
end
ary.sort.each{|e| puts e}

# 目次を表示するプログラム配列版
linewidth = 60
puts '目次'.center linewidth
content = [['1章: 数', 'p. 1'], ['2章: 文字', 'p. 72'], ['3章: 変数', 'p. 118']]
content.each{|a| puts a[0].ljust(linewidth/2) + a[1].rjust(linewidth/2)}