def translate(input)
  vowels = ["a", "e", "i", "o", "u"]
  words = input.split(" ")
  final_words = []
  words.each do |word|
    chars = word.each_char.to_a
    final = []
    if vowels.include?(chars[0])
      final_words << (chars.join) + "ay"
    else
      i = 0
      while !vowels.include?(chars[i])
          final << chars[i]
          i += 1
      end
      if chars[i] == "u" && final[-1] == "q"
        final << chars[i] #adding u to the end of final. We have (q, u) for the final
        i += 1
      end
      final_words << (chars.join.slice!(i..-1) + final.join + "ay")
    end
  end
  return final_words.join(" ")
end
