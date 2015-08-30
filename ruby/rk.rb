class String
  def rk_search(pattern)
    pos = 0
    h_self = self[0...pattern.length].rhash
    h_pattern = pattern.rhash
    until pos > length-pattern.length
      match, h_self = hash_compare(h_self, h_pattern, pattern.length, pos)
      return match if match && self[pos...pos+pattern.length] == pattern
      pos += 1
    end
  end

  def rhash(base=101)
    (0...length).inject(0) { |mem, i| mem + self[length-1-i].ord*base**(i) }
  end

  def hash_compare(h_self, h_pattern, len, pos)
    h_self == h_pattern ? pos : [nil, next_hash(h_self, len, pos)]
  end

  def next_hash(h_self, len, pos, base=101)
    return nil unless self[pos+len]
    (h_self - self[pos].ord*base**(len-1))*base + self[pos+len].ord
  end
end


@@time = []
class TestSearchs < Test::Unit::TestCase
  def setup
    @text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur ABC ABCDAB ABCDABCDABDE susususususumsu abcdefgabcdefghijabcdefghijk axacacdae sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&" * 100
    @words = ["Lorem", "sum", "fugiat", "ut aliquip", "&", "t, c", " m", "o ", "ABCDABD", "acac"]
    @nowords = ["hello", "ipsumd", "Velit", "&.", "t D", "veniam,,", "abcdefghijkabcdefghijk"]
    @st = Time.now
  end

  def teardown
    @@time << Time.now - @st
  end


  def test_rk_search
    @words.each do |wd|
      assert_equal(@text.index(wd), @text.rk_search(wd))
    end
    @nowords.each do |wd|
      assert_nil(@text.rk_search(wd))
    end
  end
end

class String
  def self.method_added(name)
    class_variable_set("@@#{$`}", 0) if name =~ /_search$/
  end

  def self.counter
    class_variables.sort.inject({}) { |h, cv| h[cv[/\w+/]] = class_variable_get(cv); h }
  end
end

END{END{
  res = String.counter
  res.each do |k, v|
    print "%s\t%8d times(%.4f) %.4f sec\n" % [k, v, v*1.0/res["power"], @@time.shift]
  end
}}