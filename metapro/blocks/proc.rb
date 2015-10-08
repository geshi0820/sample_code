      obj = Proc.new{ |num, place| p "#{place}の降水確率#{num}%" }

      obj = proc{ |num, place| p "#{place}の降水確率#{num}%" }

      obj = lambda{ |num, place| p "#{place}の降水確率#{num}%" }

      obj = ->(num, place){ p "#{place}の降水確率#{num}%" }


    obj.call(30, "東京都")
    # → "東京都の降水確率30%"

    obj.call(50, "大阪府")
    # → "大阪府の降水確率50%"
