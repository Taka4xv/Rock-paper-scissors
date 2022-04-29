
#勝ち
  def win
    puts "あっちむいて・・・\n[指差す方向を選んでください]\n1:右　2:下　3:左　4:上"
    myFingerOrientationNumber = gets.to_i
    puts "ほい"
    yourFaceOrientationNumber = rand(1..4)
    case yourFaceOrientationNumber
    when 1
      yourFaceOrientation = "右"
    when 2
      yourFaceOrientation = "下"
    when 3
      yourFaceOrientation = "左"
    when 4
      yourFaceOrientation = "上"
    end
    
    puts "相手の顔は#{yourFaceOrientation}向いています"
    
#あっちむいてほい結果出力
    case myFingerOrientationNumber
    when yourFaceOrientationNumber then
      puts "{あっちむいてほい結果は勝ちです}\n\n"
      sleep 2
    else
      puts "{再戦}"
    end
  end
  
#引き分け
  def draw
    puts "あいこで\n[出す手を選んでください]\n1:グー　2:チョキ　3:パー"
    myhandsNumber = gets.to_i
    puts "ほい"
    yourhandsNumber = rand(1..3)
    
  #じゃんけん（相手の手）
    case yourhandsNumber
    when 1
      yourhands = "グー"
    when 2
      yourhands = "チョキ"
    when 3
      yourhands = "パー"
    end
    
    puts "相手の手は#{yourhands}"
    
  #じゃんけん結果出力
    case myhandsNumber
      when 1
        if yourhandsNumber == 1
          rockPaperScissorResult = "引き分け"
          puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
          draw()
        elsif yourhandsNumber == 2
          rockPaperScissorResult = "勝ち"
          puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
          win()
        else 
          rockPaperScissorResult = "負け"
          puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
          lose()
        end
        
      when 2
        if yourhandsNumber == 1
          rockPaperScissorResult = "負け"
          puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
          lose()
        elsif yourhandsNumber == 2
          rockPaperScissorResult = "引き分け"
          puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
          draw()
        else
          rockPaperScissorResult = "勝ち"
          puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
          win()
        end
        
      when 3
        if yourhandsNumber == 1
          rockPaperScissorResult = "勝ち"
          puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
          win()
        elsif yourhandsNumber == 2
          rockPaperScissorResult = "負け"
          puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
          lose()
        else
          rockPaperScissorResult = "引き分け"
          puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
          draw()
        end
        
      else
        puts "Error:「1,2,3」を入力してください"
    end
  end
#負け
  def lose
     puts "あっちむいて・・・\n[顔を向ける方向を選んでください]\n1:右　2:下　3:左　4:上"
    myFaceOrientationNumber = gets.to_i
    puts "ほい"
    yourFingerOrientationNumber = rand(1..4)
    case yourFingerOrientationNumber
    when 1
      yourFingerOrientation = "右"
    when 2
      yourFingerOrientation = "下"
    when 3
      yourFingerOrientation = "左"
    when 4
      yourFingerOrientation = "上"
    end
    
    puts "相手の指の方向は#{yourFingerOrientation}向いています"
    
#あっちむいてほい結果出力
    case myFaceOrientationNumber
    when yourFingerOrientationNumber then
      puts "{あっちむいてほい結果は負けです}\n\n"
      sleep 2
    else
      puts "{再戦}"
    end
  end

loop do
  puts "じゃんけん・・・\n[出す手を選んでください]\n1:グー　2:チョキ　3:パー"
  myhandsNumber = gets.to_i
  puts "ほい"
  yourhandsNumber = rand(1..3) #じゃんけん結果
    
#じゃんけん（相手の手）
  case yourhandsNumber
  when 1
    yourhands = "グー"
  when 2
    yourhands = "チョキ"
  when 3
    yourhands = "パー"
  end
  
  puts "相手の手は#{yourhands}"
  
#じゃんけん結果出力
  case myhandsNumber
    when 1
      if yourhandsNumber == 1
        rockPaperScissorResult = "引き分け"
        puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
        draw()
      elsif yourhandsNumber == 2
        rockPaperScissorResult = "勝ち"
        puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
        win()
      else 
        rockPaperScissorResult = "負け"
        puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
        lose()
      end
      
    when 2
      if yourhandsNumber == 1
        rockPaperScissorResult = "負け"
        puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
        lose()
      elsif yourhandsNumber == 2
        rockPaperScissorResult = "引き分け"
        puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
        draw()
      else
        rockPaperScissorResult = "勝ち"
        puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
        win()
      end
      
    when 3
      if yourhandsNumber == 1
        rockPaperScissorResult = "勝ち"
        puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
        win()
      elsif yourhandsNumber == 2
        rockPaperScissorResult = "負け"
        puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
        lose()
      else
        rockPaperScissorResult = "引き分け"
        puts "{じゃんけん結果は#{rockPaperScissorResult}です}"
        draw()
      end
#エラー 
    else
      puts "Error:「1,2,3」を入力してください"
  end
end