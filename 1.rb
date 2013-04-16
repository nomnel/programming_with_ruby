def hours_per_year
	24 * 365
end

def minites_per_year
	60 * hours_per_year
end

def seconds_per_year
	60 * minites_per_year
end

def second_age_to_year_age(seconds)
	seconds / seconds_per_year
end

puts "1年は#{hours_per_year}時間です"

puts "10年間は#{10 * minites_per_year}分です"

puts "生まれてから#{Time.new - Time.mktime(1986, 1, 1)}秒経っている"

puts "80年生きるとして、#{(80 * 365) / 7}枚ぐらいかな"

puts "10億3400万秒生きてるとしたら#{second_age_to_year_age 1034000000}歳"