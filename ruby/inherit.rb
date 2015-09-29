class Hoge
  def hoge
    p self
    p 'hoge'
  end

  def self.class_hoge
    p self
    p 'hoge class'
  end
end


class Fuga < Hoge
end


fu = Fuga.new
fu.hoge
Fuga.class_hoge
