def hoge
  shared = 0

  Kernel.send :define_method, :counter  do
    shared
  end

  Kernel.send :define_method, :inc  do |x|
    shared += x
  end
end

hoge
p counter
p inc(10)
p counter
