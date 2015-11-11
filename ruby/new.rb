class Hoge
end


k = Hoge.new do|c|
      def initialize
        p "in initialize"
      end

      def hoge
        p "hoge hoge hoge"
      end
    end
    
o = k.new              #=> "in initialize"
o.hoge                 #=> "hoge hoge hoge"
