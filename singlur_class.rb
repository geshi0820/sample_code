
class B
end

class A < B
  p self.class
  p self.super
  def singleton_class
    p self.class
    p self
    class << self
      p self.class
      p self
    end
  end
end


a = A.new
a.singleton_class


# class B
#   class << self
#     p self.class
#     p self
#   end
#   def self.method
#     p self
#     class << self
#       p self.class
#       p self
#     end
#   end
# end
#
# B.method
