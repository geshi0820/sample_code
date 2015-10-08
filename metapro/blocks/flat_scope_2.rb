v1 = 1

Hoge = Class.new do
  v2 = 2
  p local_variables

  define_method :my_method do
    p v1
    p v2
    v3 = 3
    p local_variables
  end

  p local_variables
end

obj = Hoge.new
obj.my_method
p local_variables

# 入れ子構造のレキシカルスコープ
def hoge(x)
  yield(x)
end

hoge(100){ |x|  p x }


    def call_block(name)
      yield(name)
    end

    call_block("ほげ") { |name| p name}
    # => "ほげ"

    def hoge(a, x)
      yield(a, x)
    end

    hoge(3, 5)  { |a, x| p a * x}



      class Hoge
      end

      Hoge = Class.new do
      end

      module Fuga
      end

      Fuga = Module.new do
      end

      class Hoge
        def piyo
          p 'piyo'
        end
      end

      Hoge.send(:define_method, :piyo) do
        p 'piyo'
      end
