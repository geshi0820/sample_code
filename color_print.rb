require 'tapp'

def pp_y(obj)
  print "\e[32m"
  p obj
  print "\e[0m"
end


module Kernel
  def tapp_yy
    print "\e[32m"
    self.tapp
    print "\e[0m"
    self
  end
end


obj = 'hoge'
obj.class

obj.tapp_yy

Kernel.methods.grep(/tapp/).tapp_yy

obj.class.ancestors.each do |hoge|
  hoge.tapp_yy
  p "C or M : #{hoge.class}"
end
