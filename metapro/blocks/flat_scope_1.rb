v1 = 1

Hoge = Class.new do
  v2 = 2
  p v1
  p local_variables

  def my_method
    v3 = 3
    p local_variables
  end

  p local_variables
end

obj = Hoge.new
obj.my_method
p local_variables
