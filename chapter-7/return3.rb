# unless...「判定結果が偽の場合の処理を記述するのに使われる」


def thanks_and_receipt(receipt)
    puts "ありがとうございました。"
    unless receipt
        return
    end
    puts "こちら、レシートになります。"
end

thanks_and_receipt(false)
