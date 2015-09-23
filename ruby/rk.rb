module Hage
  def self.included(klass)
    klass.class_eval {
      p self
      def self.hage
        p 'hage'
        huhu
      end

    }
    private
     def huhu
       p 'huhu'
     end
  end
end


class Fuga
  include Hage
end

Fuga.hage
