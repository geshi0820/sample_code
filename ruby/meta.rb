class Computer
  def self.define_component(name)
    define_method(name) {
      info = @data_source.send "get_#{name}_info", @id
      price = @data_source.send "get_#{name}_price", @id
      result = "#{name.capitalize} : #{info} ($#{price})"
        return "* #{result}" if price > 100
      result
    }
  end
end



# Computer.define_component('hoge')

p Hash.new.methods.grep(/d/)
