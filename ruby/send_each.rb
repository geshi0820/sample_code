
class Array
  def plus_hoge
    self.push "hoge"
  end
end


obj = []

obj.send do
  plus_hoge
end


10.times do

end

(:where, id:1)
