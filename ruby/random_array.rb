
class Array
  def self.random_array(n)
    arr = []
    rand(n).times{ arr << rand(10)}
    return arr
  end
end
