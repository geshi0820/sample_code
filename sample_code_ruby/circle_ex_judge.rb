require 'securerandom'
require 'tapp'



class Array
  def horizontal(n)
    n.times do |k|
      tmp = []
      n.times do |m|
        x = k*n + m
        tmp.push(self[x])
      end
      result = tmp.judge(n)
      if result[0]
        return result[1]
        break
      end
    end
  end

  def vertical(n)
    n.times do |k|
      tmp = []
      n.times do |m|
        x = n*m + n*k
        tmp.push(self[x])
      end
      result = tmp.judge(n)
      if result[0]
        return result[1]
        break
      end
    end
  end


  def cross(n)
    mid = n/2
    left, right = slice(0...mid-1), slice(mid..-1).reverse
    if left == right
      if left.select{|e| e == 1 or e == 2}

    self[mid]

  def judge(n)
    circle_count = self.select{ |e| e == 1}.size
    ex_count = self.select{ |e| e == 2}.size
    result = []
    if circle_count == n
      result = [true,"◯ の勝利"]
    elsif ex_count == n
      result = [true,"☓ の勝利"]
    end
    return result
  end

  def cross(n)
  end

  def game_judgement(num)
    arr = self.flatten
    methods = [:horizontal,:vertical,:cross]
    methods.each{ |method| puts arr.send(method.to_sym, num) }
  end
end

1.times do
  sequence = 9.times.map{ SecureRandom.random_number(3) }
  puts sequence.vertical(3)
  # puts sequence.horizontal(3)
end
# arr=[]
# 3.times { |k| arr[k] = sequence[k*3..k*3+2] }