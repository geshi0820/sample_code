def my_method
  x = "エンジニア"
  yield
end

def my_method
  x = "エンジニア"
  yield
end

y = "デザイナー"
my_method do |y|
  p "私は兼、#{y}です。"
end


# yiled = ブロックを呼び出す。かつ、引数を渡す。



def each
  loop{
    x = self.pop
    yield(x)
  }
end

[1,2,3,4,5].each do |x|
  p x + 100
end
