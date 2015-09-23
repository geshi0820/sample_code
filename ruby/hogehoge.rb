require '~/sample_code/ruby/random_array'

hoge =  [10,5,1]
p hoge.inject(:+)
p hoge.inject{ |hoge| hoge +1}
