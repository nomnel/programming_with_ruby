# フルネームで挨拶
puts '姓入力して'
last_name = gets.chomp
puts '名入力して'
first_name = gets.chomp
puts "こんにちは、#{first_name + ' ' + last_name}"

# ベターな数字
puts '好きな数は？'
ans = gets.chomp.to_i
puts "それより#{ans + 1}のがよくない？"