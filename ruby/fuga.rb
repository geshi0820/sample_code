class Vono
  def hoge(name)
    @hoge = name
  end

  def game
    p @hoge
  end
end

vono = Vono.new
vono.instance_eval do
  @hoge = 'hogehoge'
end

module Gesi
end

# p Gesi.class
# p vono.instance_variables
# p String.new
# p Hash.new
# p Array.new
# p Object.class
# # p Object.methods.grep(/''/)
# p Object.new
# p nn
#
# # p Integer.methods
# # p TrueClass.class
# # p TrueClass.new
# # p Integer.new


class Hoge

  def initialize
    p {}
  end
end

p Hoge.new

class Object
  def initialize
    p 'hello'
  end
end

class Hoge
  def initialize
    p 'hello'
  end
end

p Hoge.ancestors
p Object.instance_methods
p Hoge.new


Object.new
