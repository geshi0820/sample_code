    def hoge(a,b)
      a = 100
      yield(a,b)
    end


    def fuga(a,b, &block)
      hoge(a,b, &block)
    end

    fuga(10,20){ |a,b| p a * b}
    # => 2000


p Object.new



    def hoge(a,b)
      a = 100
      yield(a,b)
    end

     # このメソッドを作成せよ
    def fuga()
    end

    fuga(10, 20){ |a, b| p a * b }
    # => 2000
