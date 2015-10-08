def a_method(a, b)
  a + yield(a, b)
end

def hoge
  if block_given?
    p yield
  else
    p 'ブロック確認できません。'
  end
end

p a_method(3, 2){ |x, y| x * y }

# => 9

hoge{ "名無し君、ブロックありますよ"}
hoge

a = lambda { p self.class}
p a.class
a.call

x = 100
ppp = ->(x){  p x }
ppp.call(x)


    def call_method(a, x)
      result = a * x
      p result
    end

    def call_block(a, x)
      yield(a, x)
    end

    call_method(3,5)
    # => 15

    call_block(3, 5){ |a, x| p a * x}
