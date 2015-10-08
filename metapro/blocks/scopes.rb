def event(title)
  obj = EventCall.new(title)
  obj.notifier
end

class EventCall
  def initialize(title)
    @title = title
  end

  def notifier
    print "イベント名：FiNC大学"
  end

end


event "FiNC大学" 
