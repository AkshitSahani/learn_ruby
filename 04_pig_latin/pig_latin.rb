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
    # string.each do |char|
      while !vowels.include?(chars[i])
        # string.each do |char|
          final << chars[i]
          i += 1
      end
        final_words << (chars.join.slice!(i..-1) + final.join + "ay")
  end
end
  return final_words.join(" ")
end
