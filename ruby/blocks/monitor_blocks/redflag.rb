def event(name)
  puts "ALERT: #{name}" if yield
end

def setup
  yield
end

Dir.glob('/Users/Shige/sample_code/ruby/blocks/**/*events.rb')
  .each{|file| load file}
