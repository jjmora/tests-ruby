def add(x,y)
    x + y
end

def subtract(x,y)
    x - y
end

def sum(arr)
    arr.reduce(0, :+)
end


def multiply(x,y)
    x * y
end


def power(x, y)
    x**y
end

def factorial(nb)
    (1..nb).inject(:*) || 1
end

p power(-3, 8)
