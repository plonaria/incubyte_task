require 'rails_helper'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number when input has one number' do
    	expect(StringCalculator.add("1")).to eq(1)
    end

    it 'returns sum for two comma-separated numbers' do
		  expect(StringCalculator.add('1,5')).to eq(6)
		end

		it 'sums any amount of comma-separated numbers' do
			expect(StringCalculator.add('1,2,3,4')).to eq(10)
		end

		it 'allows new lines between number' do
			expect(StringCalculator.add("1\n2,4")).to eq(7)
		end

		it 'supports a custom delimiter with header line' do
		  expect(StringCalculator.add("//;\n1;2")).to eq(3)
		end

		context 'negatives' do 
			it 'when one number is negative' do 
				expect {StringCalculator.add('1,-2,3')}.to raise_error(ArgumentError, 'negative numbers not allowed -2')
			end

			it 'for multiple netive numbers' do
				expect {StringCalculator.add('1,-2,3,-4')}.to raise_error(ArgumentError, 'negative numbers not allowed -2 -4')
			end
		end
  end
end