#Powered by Segrelove !

def max_product(number, size)
    result = number.sort {|x,y| y <=> x}
    sum = result[0..size-1]
    return sum.inject(:*)
end
