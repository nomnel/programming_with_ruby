# 99 Bottles of Beer on the Wall
def pluralize(n, singular)
  n == 1 ? singular : singular + 's'
end

99.downto(1).each{|i|
  puts "#{i} #{pluralize(i, 'bottle')} of beer on the wall"
  puts "#{i} #{pluralize(i, 'bottle')} of beer"
  puts "Take one down and pass it around"
  puts "#{i - 1} #{pluralize(i-1, 'bottle')} of beer on the wall"
  puts ''
}

# 耳の遠いおばあちゃん
puts 'なんじゃ?'
while true
  ans = gets.chomp

  if ans == ans.upcase
    break if ans == 'BYE'

    puts "いやー、#{1930 + rand(21)}年以来ないねー!"
  else
    puts 'は?! もっと大きな声で話しておくれ、坊や!'
  end
end
puts 'じゃあの'

# さみしがりやの耳の遠いおばあちゃん
def gramma(bye_count)
  return if bye_count >= 3

  ans = gets.chomp

  if ans == ans.upcase
    if ans == 'BYE'
      gramma(bye_count + 1)
    else
      puts "いやー、#{1930 + rand(21)}年以来ないねー!"
      gramma(0)
    end
  else
    puts 'は?! もっと大きな声で話しておくれ、坊や!'
    gramma(0)
  end
end

puts 'なんじゃ?'
gramma(0)
puts 'じゃあの'

# うるう年
def leap_year?(year)
  ((year % 400).zero?) || ((year % 4).zero? && (not ((year % 100).zero?)))
end

puts '開始は?'
start_year = gets.chomp.to_i
puts '終わりは?'
end_year = gets.chomp.to_i

(start_year..end_year).select{|y| leap_year? y}.each{|y| puts y}