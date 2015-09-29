# -*- Coding: utf-8 -*-
scripter = ->(*args){->{puts args.join("\n")}}
title = ->(text){"『#{text}』\n"}
paragraph = ->(*args){args.join("\n")+"\n"}
chara = ->(name){
  ->(text){"#{name}「#{text}」"}
}

ryu = chara[:リュウ]
tak = chara[:たかし]
script = scripter[
  title[:俺より強い奴に、会いに行く],
  paragraph[
    :ピンポーン,
    ryu[:こんにちは],
    tak[:はいどなた]
  ],paragraph[
    ryu[:いまちょっといいですか],
    tak[:これから出かけます]
  ],paragraph[
    ryu[:午後出勤ですか？],
    tak[:はい]
  ],paragraph[
    ryu[:強そうですね],
    tak[:なにがですか]
  ],paragraph[
    ryu[:態度が]
  ],paragraph[
    :リュウは、自分より強そうな奴に、会いにいったのだった。　完
  ]
]

script[]


p Dir.ancestors
p Dir.pwd
p Dir.home
p Dir.glob("/Users/Shige/sample_code/ruby/*.rb")
