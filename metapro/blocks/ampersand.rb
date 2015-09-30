def hoge(a,b)
  a = 100
  yield(a,b)
end


def fuga(a,b, &block)
  hoge(a,b, &block)
end

# &をつけると、ブロック
# &を外すと、Proc
fuga(10,20){ |a,b| p a * b}
