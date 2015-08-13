require 'securerandom'
require 'tapp'

class Array
  def quick_sort
    return self if self.tapp.length <= 1
    pivot = pop
    left, right = partition { |e| e < pivot }
    push pivot
    left.quick_sort + [pivot] + right.quick_sort
  end
end

N = 10
series = N.times.map { SecureRandom.random_number(100) }
p series.quick_sort