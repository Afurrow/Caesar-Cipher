def caesar_cipher (word, shift)
  alph = ("a".."z").to_a
  shiftMod = shift % 26

  newString = word.split("").map do |char|
    index = alph.index(char.downcase)

    if index
      indexSum = index + shiftMod

      if indexSum > 25
        newShift = indexSum - 26
      elsif indexSum < 0
        newShift = 26 - indexSum
      else 
        newShift = indexSum
      end 

      if alph[index].upcase == char
        alph[newShift].upcase
      else
        alph[newShift]
      end
    else 
      char
    end
  end

  newString.join()
end