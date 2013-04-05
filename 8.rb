# thousand, million, billion, trillion追加済み拡張版
def englishNumber(number)
  return '負でない数を入力してください.' if number < 0
  return 'zero' if number == 0

  numString = ''

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left  = number

  # 単位(?)の追加はここに
  [["trillion", 1000000000000],
   ["billion",  1000000000],
   ["million",  1000000],
   ["thousand", 1000]].each{|a|
    key, value = a[0], a[1]
    write = left / value
    left  = left - (write * value)

    if write > 0
      num = englishNumber(write)
      numString = numString + num + ' ' + key

      if left > 0
        numString = numString + ' '
      end
    end
  }

  write = left / 100
  left  = left - (write * 100)

  if write > 0
    numString = numString + onesPlace[write-1] + ' hundred'

    if left > 0
      numString = numString + ' '
    end
  end

  write = left / 10
  left  = left - (write * 10)

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]

      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left
  left  = 0

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end

# weddigNumberは略

# ninety-nine Bottles of Beer on the Wall
def pluralize(n, singular)
  n == 1 ? singular : singular + 's'
end

99.downto(1).each{|i|
  eng_num = englishNumber(i)
  puts "#{eng_num} #{pluralize(i, 'bottle')} of beer on the wall"
  puts "#{eng_num} #{pluralize(i, 'bottle')} of beer"
  puts "Take one down and pass it around"
  puts "#{englishNumber(i-1)} #{pluralize(i-1, 'bottle')} of beer on the wall"
  puts ''
}