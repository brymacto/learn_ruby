def translate(str)
  words = str.split(" ")

  words.each do |str|
    if ["a", "e", "i", "o", "u"].include?(str.slice(0, 1))
      str << "ay"
    else # if starts with consonant
      first_vowel = str.index(/[aeiou]/)
      if str.slice(first_vowel - 1, 2) == "qu"
        first_vowel = str.index(/[aeio]/)
      end
      str << str.slice!(0,first_vowel)
      str << "ay"
    end
    str
  end

words.join(" ")

end

#square
#aresqu-ay

#square
#uaresq-ay