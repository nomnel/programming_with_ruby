def full_name
	puts '姓入力して'
	last_name = gets.chomp

	puts '名入力して'
	first_name = gets.chomp

	"#{first_name} #{last_name}"
end

def better_number
	puts '好きな数は？'
	num = gets.chomp.to_i

	num + 1
end

# フルネームで挨拶
puts "こんにちは、#{full_name}"

# ベターな数字
puts "それより#{better_number}のがよくない？"