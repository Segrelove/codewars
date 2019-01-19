require_relative '../lib/app.rb'

# Playing With Lists/Arrays Series
# Task
# Given an array/list [] of integers , Find the product of the k maximal numbers.

# Notes
# Array/list size is at least 3 .

# Array/list's numbers Will be mixture of positives , negatives and zeros

# Repeatition of numbers in the array/list could occur.
describe 'Array Exercice' do 
    it 'should return a hash' do 
        expect(max_product([4,3,5], 2)).to eq(20)
        expect(max_product([10,8,7,9], 3)).to eq(720)
        expect(max_product([8,6,4,6], 3)).to eq(288)
        expect(max_product([10,2,3,8,1,10,4], 5)).to eq(9600)
        expect(max_product([13,12,-27,-302,25,37,133,155,-14], 5)).to eq(247895375)
        expect(max_product([-4,-27,-15,-6,-1], 2)).to eq(4)
        expect(max_product([1], 1)).to eq(1)
    end
end

# I will give you an integer. Give me back a shape that is as long and wide as the integer. The integer will be a whole number between 0 and 50.

# Example
# n = 3, so I expect a 3x3 square back just like below as a string:



describe 'Shape Exercice' do 
    it "should give a square of +" do
        expect(generate_shape(3)).to eq("+++\n+++\n+++")
        expect(generate_shape(8)).to eq("++++++++\n++++++++\n++++++++\n++++++++\n++++++++\n++++++++\n++++++++\n++++++++")
    end
end