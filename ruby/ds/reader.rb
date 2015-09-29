class Reader
	def initialize
		@data = {}
	end

	def foo( arg )
		@data[__method__] = arg #該当するハッシュに対して値をセット
	end

	def bar( *args )
		if @data[__method__].is_a? Array # 既に配列であれば追加
			@data[__method__] += args
		else # 配列でなければ代入
			@data[__method__] = args
		end
	end

	def boo( &block )
		@data[__method__] = block # 関数も保存しておける
	end

	def get # 値を返却するためのメソッド
		@data
	end
end
