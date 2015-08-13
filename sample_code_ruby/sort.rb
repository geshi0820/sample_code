require 'securerandom'
require 'tapp'
require 'objspace'

class Array

  def bubble_sort
    num = self.length
    num.times do
      (num-1).times do |k|
        if self[k] > self[k+1]
          self[k],self[k+1] = self[k+1],self[k]
        end
      end
    end
    return self
  end

  def select_sort
    num = self.length
    (num-1).times do |i|
      min_k = i
      (i+1).upto(num-2) { |k| min_k = k if self[k] < self[k+1] }
      if self[i] > self[min_k]
        self[i],self[min_k] = self[i],self[min_k]
      end
    end
    return self
  end

  def merge_sort
    tmp = self.dup
    return tmp if tmp.length <= 1
    a, b = self.half.map { |e| e.merge_sort }
    merge(a, b)
  end

  def half
    mid = length/2
    return slice(0...mid), slice(mid..-1)
  end

  def merge(a, b)
    res = []
    until a.empty? && b.empty?
      res <<
      case
      when a.empty? then b.shift
      when b.empty? then a.shift
      when a.first < b.first then a.shift
      else b.shift
      end
    end
    res
  end
end

class String
  def cell
    return self + self
  end

  def cell_division
    return self if self.length > 100
    self.cell.cell_division
  end

  def cell_divison_loop
    cell = self
    loop {
      break if cell.length > 100
      cell = cell * 2
     }
     return cell
  end


  def divison2
    self.split("").map{ |s| s=="c" ? "acc" : "aaa" }.join
  end

  def cell_divison2
    return self.length if self.length > 1000000
    self.divison2.cell_divison2
  end

  def cell_division2_loop
    start_time = Time.now
    cell = self
    loop {
      break if cell.length > 1000000
      cell = cell.split("").map{ |s| s=="c" ? "acc" : "aaa" }.join
    }
    return cell.length
  end
end


memory = []
p ObjectSpace.count_objects
"c".cell_division2_loop
p ObjectSpace.count_objects
"c".cell_divison2
p ObjectSpace.count_objects
# p cell.split("").select{ |s| s=="a"}.length.to_f/cell.length



class Fixnum
  def fact
    return 1 if self == 1
    a = self * (self - 1).fact
  end

  def fact2
    return 1 if self == 0
    res = self*(self-1).fact2
    p res
  end

  def fib
    if self == 0
      0
    elsif self == 1
      1
    else
      (self-1).fib + (self-2).fib
    end
  end

  def fib2
    if self == 0
      0
    elsif self == 1
      1
    else
      prev = 0
      res = 1
      self.times do
        prev = res
        res = res + prev
      end
    end
  end

end

N = 4
series = N.times.map { SecureRandom.random_number(100) }



# p series.bubble_sort
# p series.select_sort
# p series.merge_sort


p tas(1,3)