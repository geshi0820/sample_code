class Piyo
  private
  def piyo
    p 'piyo'
  end
end

class Hoge < Piyo
  def hoge_method(num)
    @hoge = num
  end

  def hoge_hoge(num)
    private_hoge
    @hoge
  end

  private
  def private_hoge
    p self
    p 'private hoge'
  end
end


class Fuga < Hoge
  def fugafuga
    private_hoge
    piyo
  end
end


Fuga.new.fugafuga

p Hoge.new.hoge_method(10)
p Hoge.new.hoge_hoge(10)
