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
  end
end