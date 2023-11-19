def cipher(sentence, num)
  new_word = []
  string_end = ''
  sentence.each_char do |chr|

    if chr.ord.between?(65,90)
      new_word.push(((chr.ord) + num - 65) % 26 + 65)
    
    
    elsif chr.ord.between?(97,122)
      new_word.push(((chr.ord) + num - 97) % 26 + 97)
    
    else
      new_word.push(chr.ord)
    end
  end
  
  new_word.each do |element|
    string_end << element.chr
  end
  puts string_end
  
end
cipher("Kako smo danes!",1)