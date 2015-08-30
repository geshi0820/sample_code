require "tapp"
class Array
  def hit(answer)
    hit_count = 0
    hit_arr = []
    answer.size.times do |i|
      if self[i] == answer[i]
        hit_count += 1
        hit_arr.push self[i]
      end
    end
    return hit_count, hit_arr
  end

  def brow(answer,hit_arr=[])
    brow = 0
    bro_arr = self.select{ |e| !hit_arr.include?(e) }
    ans_arr = answer.select{ |e| !hit_arr.include?(e) }
    ans_arr.each do |e|
      if bro_arr.include?(e)
        brow +=1
        bro_arr = bro_arr.select{ |ee| ee!=e}
      end
    end
    return brow
  end
end

N = 4
slot = N.times.map { ["R","G","B","Y"][rand(4)] }
answer = N.times.map { ["R","G","B","Y"][rand(4)] }

hit_array = slot.hit(answer)
p hit_array[]
p slot.brow(answer, hit_array[1])
