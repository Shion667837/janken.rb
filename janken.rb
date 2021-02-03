puts "じゃんけん・・・・"

def janken
  puts "(0)グー(1)チョキ(2)パー(3)戦わない"

  player_hand = gets.to_i

  puts "ホイ！"
  puts "----------------------------"
  program_hand = rand(3)
  jankens = ["グー", "チョキ", "パー"]

  if player_hand == 3
    puts "終了します"
    return false
  else
    puts "あなた: #{jankens[player_hand]}を出しました\n相手: #{jankens[program_hand]}を出しました"
    puts "----------------------------"
  end

  if (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "あっち向いて〜"
    puts "(0)上(1)右(2)下(3)左"
    player_finger = gets.to_i
    puts "ホイ！"
    puts "--------------------------"
    program_finger = rand(4)
    fingers = ["上", "右", "下", "左"]
    puts "あなた: #{fingers[player_finger]}\n相手: #{fingers[program_finger]}"
    if player_finger == program_finger
      puts "あなたの勝ちです"
      return false
    else
      puts "じゃんけん・・・"
    end
    return true
  elsif (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1) || (player_hand == 3 && program_hand == 2)
    puts "あっち向いて〜"
    puts "[0]上[1]右[2]下[3]左"
    player_finger = gets.to_i
    puts "ホイ！"
    puts "--------------------------"
    program_finger = rand(4)
    fingers = ["上", "右", "下", "左"]
    puts "あなた: #{fingers[player_finger]}\n相手: #{fingers[program_finger]}"
    if player_finger == program_finger
      puts "あなたの負けです"
      return false
    else
      puts "じゃんけん・・・"
    end
    return true
  else
    player_hand == program_hand
    puts "あいこで・・・"
    return true
  end
end

next_game = true
while next_game do
  next_game = janken
end