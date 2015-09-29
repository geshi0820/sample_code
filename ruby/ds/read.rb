require_relative 'reader'

config = Reader.new
# 読み込んだファイルをinstance_evalに投げるだけ
config.instance_eval File.read 'sample1.rb'

p config.data
