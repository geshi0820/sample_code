lambda{
  setups = []
  events = {}

  Kernel.send :define_method, :event do |name, &block|
    events[name] = block
  end

  Kernel.send :define_method, :setup do |name, &block|
    setups << block
  end

  Kernel.send :define_method, :each_event do |&block|
    events.each_pair do |name, event|
      block.call name, event
    end
  end

}


def events(name, &block)
  @events[name] = block
end

def setup(&block)
  @setups << block
end


Dir.glob('/Users/Shige/sample_code/ruby/blocks/**/*events.rb')
  .each do |file|
    @setups = []
    @events = {}
    load file
    @events.each_pair do |name, event|
      env = Object.new
      @setups.each do |setup|
        env.instance_eval &setup
      end
      puts "ALERT: #{name}" if env.instance_eval &event
    end
  end
