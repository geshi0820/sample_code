
hash = {}


def new_hash(hash, key)
  hash[key] = {}
end

def hoge(hash_tree)
  A_category.B_categories.each do |B_category|
    hash = { b_category: b_category.name }
    hash_tree[hash] = Hash.new
  end
end


変化する者。
A_category → selfにする。
B_categories　→
b_category
hash_tress

分裂した要素を返すメソッド。


users.division.hoge


all_categories = ['medium_category', 'small_category', 'micro_category']

def hoge(hash_tree, i)
  child_category_name = all_categories[i]
  self.hoge(hash_tree, 1)
end


  self.send(child_category_name.pluralize.to_sym).each do |child_category|
    key_hash = { child_category_name.to_sym => child_category.name }
    hash_tree[key_hash] = Hash.new
  end
end
