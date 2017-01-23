def echo(string)
  return string
end

def shout(string)
  return string.upcase!
end

def repeat(string, num = 2)
  string = (string + " ") * num
  return (string.split(" ")).join(" ")
end

def start_of_word(string, num)
  a = string.each_char.to_a
  count = 0
  final = ""
  while count < num
    final += a[count]
    count += 1
  end
  return final
  #you can use string slicing here
  # string.slice [0..n]
end

def first_word(string)
  string = string.split(" ")
  return string[0]
end

def titleize(string)
  sin = ["over", "the", "and"]
  string = string.split(" ")
  a = string.each_with_index do |word, index|
    if sin.include?(word) == FALSE or index == 0
      word.capitalize!
    end
  end
  return a.join(" ")
end
