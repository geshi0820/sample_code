#　rails consoleで使用。
numbers = [1, 2, 3, 4, 5, 6, 7, 8]
animals = ["dog", "cat", "mouse"]
animals1 =	["dog", "cat", "mouse","elephant"]
scores = { 'Carol' => 90, 'Alice' => 50, 'David' => 40, 'Bob' => 60 }
arr = []
new_user = User.new
user3 = User.find(3)
del_user = user3.destroy
error = nil



numbers.map {|item| item * 2 }
numbers.select {|item| item % 2 == 0 }
numbers.find {|item| item % 2 == 0 }
arr = []
arr.empty?
numbers << 9
User.find(3)
User.find_by(username: 'カツオ')
User.all.map(&:username)
User.pluck(:id)
new_user.try(:size)
error ||= 'hello'
User.find(0).blank?
User.find(0).present?
numbers.size>3 ? "valid" : "invalid"
animals if animals.size > 2
animals unless animals.size > 2
User.all.index_by(&:id)
animals.each_with_index {|anim, i| puts "#{i+1}. #{anim}" }
scores.each_with_object([]) do |(key, val), arr|
	arr << key if val >= 60
end
numbers.any? {|num| num > 7 }
numbers.any? {|num| num.size > 8 }
new_user.new_record?
new_user.persisted?
user3.persisted?
del_user.persisted?