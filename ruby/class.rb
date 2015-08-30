# p 'hoge'.hash
# p 'hoge'.object_id()

require 'hoge'
require 'fiddle'
s = "abc"
p e = s.hash
p Fiddle::Pointer[e].to_i
p size=(s)
