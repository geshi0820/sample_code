v1 = 1


class Hoge

  v2 = 2
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
