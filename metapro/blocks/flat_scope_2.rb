v1 = 1

Hoge = Class.new do
  v2 = 2
  p local_variables

  define_method :my_method do
    p v1
    p v2
    v3 = 3
    p local_variables
  end

  p local_variables
end

obj = Hoge.new
obj.my_method
p local_variables

# 入れ子構造のレキシカルスコープ
