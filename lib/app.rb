#Powered by Segrelove !

# Playing With Lists/Arrays Series
# Task
# Given an array/list [] of integers , Find the product of the k maximal numbers.

# Notes
# Array/list size is at least 3 .

# Array/list's numbers Will be mixture of positives , negatives and zeros

# Repeatition of numbers in the array/list could occur.

def max_product(number, size)
    result = number.sort {|x,y| y <=> x}
    sum = result[0..size-1]
    return sum.inject(:*)
end

# I will give you an integer. Give me back a shape that is as long and wide as the integer. The integer will be a whole number between 0 and 50.

# Example
# n = 3, so I expect a 3x3 square back just like below as a string:

def generate_shape(n)
    ("#{"+" * n}\n" * n).chop
end

def getIssuer(number)
    if number.to_s[0] == "4" 
        if number.to_s.size == 13 || number.to_s.size == 16
            return "VISA"
        else
            return "Unknown"
        end
    elsif number.to_s[0..1] == "34" || number.to_s[0..1] == "37"
        if number.to_s.size == 15
            return "AMEX"
        else
            return "Unknown"
        end
    elsif number.to_s[0..3] == "6011"
        if number.to_s.size == 16
            return "Discover"
        else 
            return "Unknown"
        end
    elsif number.to_s[0..1].to_i.between?(51, 55) == true
        if number.to_s.size == 16
            return "Mastercard"
        else 
            return "Unknown"
        end
    else 
        return "Unknownii"
    end
end

def frame(text, char)
    space = " "
    number_of_words = text.count
    sorted_by_chars = text.sort_by(&:length)
    number_of_chars = sorted_by_chars[-1].size
    number_of_chars_spaced = sorted_by_chars[-1].size + 4
    part1 = char * number_of_chars_spaced + "\n"
    part2 = []
    i = 0
    while i < number_of_words
        number_of_chars_array = text[i].to_s.size
        result = char + space + text[i]
        x = number_of_chars - number_of_chars_array
        pushing_result = result + (space*x) + space+ char + "\n"
        part2.push(pushing_result)
        i += 1
    end
    part3 = char * number_of_chars_spaced
    return part1 + part2.join + part3
    
end

puts frame(['HOCHOU','CHTO','BE', 'VSIO', 'BELLA', 'KOROCHO'], "O")
