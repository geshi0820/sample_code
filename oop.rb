class B
  attr_accessor :title

  def initialize(title)
    @title = title
  end

  # def title=(title)
  #   @title = title
  # end

end

@b = B.new('リーダブルコード')
p @b.title
@b.title = 'メタプログラミング'
p @b
p @b.methods
@b.tap{|b| p b}
