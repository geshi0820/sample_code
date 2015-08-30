require 'securerandom'
require 'tapp'
sequence = 9.times.map{ SecureRandom.random_number(2) }
arr=[]
3.times { |k| arr[k] = sequence[k*3..k*3+2] }


class Array
  def horizontal
    self.judge
  end

  def vertical
    arr = []
    3.times {|i| arr[i] = [] ; 3.times{ |k| arr[i][k] = self[k][i] } }
    arr.judge()
  end

  def cross
    arr = []
    arr[0],arr[1] = [],[]
    3.times { |k| arr[0][k] = self[k][k] }
    v,h = 0,2
    3.times { |k|
      arr[1][k] = self[v][h]
      v += 1
      h -= 1
    }
    arr.judge()
  end

  def judge
    result = nil
    self.each do |arr|
      num = arr.select{ |e| e==1}.length
      if num == 3
        result = [true,'◯ の勝ち']
        break
      elsif num == 0
        result = [true,'☓ の勝ち']
        break
      end
    end
    return result
  end

  def game_decision
    methods = ["horizontal","vertical","cross"]
    3.times do |i|
      result = self.send(methods[i].to_sym)
      unless result.nil?
        return result[1]
        break
      end
    end
  end
end
puts arr.game_decision


