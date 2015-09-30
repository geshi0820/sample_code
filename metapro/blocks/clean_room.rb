class CleanRoom
  def hoge
  end

  def fuga
  end
end


obj = CleanRoom.new
obj.instance_eval do
  if hoge > 10
    fuga
  end
end
# ブロックを評価するためだけのインスタンス
# →　DSLデ用いる 
