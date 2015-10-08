class Bank
  def initialize(money, name)
    @money = money
    @name = name
  end

  private
  def own_bank
    p "#{@name}の講座です"
  end
end

yamaken_bank =  Bank.new(2000, "山本健太")
# 処理
# < Bank:0x007fa1a287f6e0 @money=1000, @debt=2>


yamaken_bank.instance_eval do
  @money = 1000 * 0.5
  @debt = 100000
  own_bank
  Bank.send(:define_method, :comment) do
    p "ハックしました。"
  end
end

yamaken_bank.comment
p yamaken_bank

"山本健太の講座です"
"ハックしました。"
#=> #<Bank:0x007fcadc88ecb8 @money=500.0, @name="山本健太", @debt=100000>
