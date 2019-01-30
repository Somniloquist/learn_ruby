#write your code here
def add a, b
    a + b
end

def subtract a, b
    a - b
end

def sum numbers
    numbers.reduce(0) { |sum, n| sum += n }
end

def multiply numbers
    numbers.reduce(1) { |result, n| result *= n }
end

def power a, b
    a**b
end

def factorial a
    a <=1 ? 1 : (2..a).reduce(:*)
end