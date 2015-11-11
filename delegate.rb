module A
  def a_method
    p "#{self} with a_method"
  end
end

s = "hello"
s.extend(A)
s.a_method
