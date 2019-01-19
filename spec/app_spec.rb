require_relative '../lib/app.rb'

# Free Synthaxe for ya
describe 'Basic Test' do 
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
