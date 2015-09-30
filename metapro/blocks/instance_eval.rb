class MyClass
  def initialize
    @v = 1
  end

  def hoge
    @a = 11
  end
end


obj = MyClass.new
obj.instance_eval do
  p self
  hoge
  p self
  p @a
end
