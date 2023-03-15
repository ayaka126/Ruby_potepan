puts "あっち向いてホイ！スタート♪"

def janken
    jankens = ["グー","チョキ","パー","戦わない"]

    puts "じゃんけん・・・"
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"

    select_hand = gets.to_i
    computer_hand = rand(3) #コンピュータは0,1,2のどれかを出す
    puts "ポン！"
    puts "-----------------------"
    puts "あなた：#{jankens[select_hand]}を出しました"
    puts "相手：#{jankens[computer_hand]}を出しました"
    puts "-----------------------"

    if select_hand == computer_hand
        aiko

    elsif select_hand == 0 && computer_hand == 1 || 
          select_hand == 1 && computer_hand == 2 ||
          select_hand == 2 && computer_hand == 0
        puts "勝ちました！"
        $result = "win"
        acchimuite_hoi
        
    elsif select_hand == 3
        puts "ゲームを終了します"

    elsif select_hand > 3 || select_hand < 0
        puts "0から3の数字を入力してください"

    else
        puts "負けました。"
        $result = "lose"
        acchimuite_hoi
    end

end

def acchimuite_hoi
    directions = ["上","下","左","右"]

    puts "あっち向いて・・・"
    puts "0(上)1(下)2(左)3(右)"

    select_direction = gets.to_i
    computer_direction = rand(4)

    puts "ホイ！"
    puts "-----------------------"
    puts "あなた：#{directions[select_direction]}"
    puts "相手：#{directions[computer_direction]}"
    puts "-----------------------"

    if $result == "win" && select_direction == computer_direction
        puts "あなたの勝ちです！おめでとうございます☆"

    elsif $result == "lose" && select_direction == computer_direction
        puts "コンピュータの勝ちです・・残念！"

    else
        puts "ジャンケンからやり直しましょう！"
        janken
    end
end 

def aiko
    jankens = ["グー","チョキ","パー","戦わない"]

    puts "あいこで・・・"
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"

    select_hand = gets.to_i
    computer_hand = rand(3) #コンピュータは0,1,2のどれかを出す

    puts "ショ！"
    puts "-----------------------"
    puts "あなた：#{jankens[select_hand]}を出しました"
    puts "相手：#{jankens[computer_hand]}を出しました"
    puts "-----------------------"

    if select_hand == computer_hand
        aiko

    elsif select_hand == 0 && computer_hand == 1 || 
          select_hand == 1 && computer_hand == 2 ||
          select_hand == 2 && computer_hand == 0
        puts "勝ちました！"
        $result = "win"
        return acchimuite_hoi

    elsif select_hand > 3 || select_hand < 0
        puts "0から3の数字を入力してください"

    elsif select_hand == 3
        puts "ゲームを終了します"

    else 
        puts "負けました。"
        $result = "lose"
        acchimuite_hoi
    end
end

janken