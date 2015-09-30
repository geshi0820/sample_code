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
