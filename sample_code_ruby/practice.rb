class Integer
  def countdown
    return "over" if self == 0
    a = (self-1).countdown
  end
end

p 100.countdown