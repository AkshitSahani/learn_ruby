def add(a,b)
  return a + b
end

def subtract(a,b)
  return a - b
end

def sum(array)
  count = 0
  array.each do |number|
  count += number
  end
  return count
end

def multiply(array)
  count = 1
  array.each do |number|
  count = count * number
  end
  return count
end

def factorial(n)
  count = 1
  j = 0
  while n-j > 1
    count = count * (n-j)
    j += 1
  end
  return count
end
