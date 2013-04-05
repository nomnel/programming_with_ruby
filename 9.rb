y, m, d = 1986, 1, 1

# いつ10億秒歳になるか
puts Time.mktime(y, m, d) + 1000000000

# 今何歳か
puts "今#{((Time.new - Time.mktime(y, m, d)) / (60 * 60 * 24 * 365.25)).to_i}歳ぐらい"

# OrangeTreeクラス
class OrangeTree
  def initialize
    @height = 1
    @orangeCount = 0
    @dead = false
    @age = 0
  end

  def height
    puts "#{@height}メートル"
  end

  def oneYearPasses
    if @dead
      puts "枯れちゃってるので何もないよ"
      return
    end

    @orangeCount = 0
    @age += 1

    if die?
      @dead = true
    else
      grow

      produce if grown?
    end
  end

  def countTheOranges
    "#{@orangeCount}個の実が成っている"
  end

  def pichAnOrange
    if @orangeCount > 0
      @orangeCount -= 1
      puts "おいしー"
    else
      puts "実が無いよー"
    end
  end

  private

  def die?
    @age > 10
  end

  def grown?
    @age > 3
  end

  def grow
    @height += 1
  end

  def produce
    @orangeCount = @age
  end
end

# 赤ちゃんドラゴンと会話(Dragonの定義は省略)
norbert = Dragon.new('Norbert')
while true
  mname = gets.chomp

  if mnaem == "exit"
    exit
  elsif ["feed", "walk", "putToBed", "toss", "rock"].find{|s| s == mname}
    norbert.method(mname).call
  else
    puts "そんなメソッドは無い"
  end
end