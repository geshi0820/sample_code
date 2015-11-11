class Array
  def self.generate(n)
    array = []
    n.times do
      array << rand(100)
    end
    return array
  end

  def average
    return 0.0 if size.zero?
    inject(0.0){|sum, i| sum += i } / size
  end

  def variance
    avg = 50
    inject(0.0){ |accum, i| accum += (i.to_i - avg) ** 2 } / (size - 1)
  end

  def median
    array = self.sort
    mid, mod = size.divmod(2)
    mod == 0 ? array[mid - 1, 2].inject(:+) / 2.0 : array[mid]
  end

  def standard_deviation
    return Math.sqrt(variance)
  end

  def deviation_to_score(deviation)
    (((deviation.to_i - 50) * standard_deviation) / 10) + average
  end

  def score_to_deviation(score)
    # 偏差値計算式: ( x - Xの平均 ) / Xの標準偏差 + 50 (Xはxの母集団)
    ((10 * (score - average)) / standard_deviation) + 50
  end
end



p score = rand(100)
arr1 = Array.generate(10)
p 'サンプル1'
p arr1.average
p arr1.standard_deviation
p arr1.score_to_deviation(score)


arr2 = Array.generate(1000)
p 'サンプル2'
p arr2.average
p arr2.standard_deviation
p arr2.score_to_deviation(score)

arr3 = Array.generate(1000000)
p 'サンプル3'
p arr3.average
p arr3.standard_deviation
p arr3.score_to_deviation(score)
