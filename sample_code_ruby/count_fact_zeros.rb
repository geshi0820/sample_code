require "tapp"
def kaijo(num)
  return num if num == 1
  num * kaijo(num-1)
end

def count_zero(num)
  s_time = Time.now
  res = 0
  arr = num.to_s.split("")
  loop{
    if arr.pop == "0"
      res += 1
      next
    else
      break
    end
  }
  return res Time.now-s_time
end


class Fixnum
  def count_five
    num = self
    count = 0
    loop{
      if num % 5 == 0
        count +=1
        num /= 5
      else
        break
      end
    }
    return count
  end

  def count_fact_zeros
    s_time = Time.now
    count = 0
    2.upto(self) { |i| count += i.count_five  }
    return count Time.now-s_time
  end
end

p 100.count_fact_zeros

num = kaijo(100)
p count_zero(num)