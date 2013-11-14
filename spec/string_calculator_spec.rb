require 'rspec'
require 'string_calculator'

describe StringCalculator do

	it 'returns the number 0 for an empty string' do
		calculator = StringCalculator.new('')
		expect(calculator.add).to eq(0)
	end

	it 'returns the number 5 for a string with 5' do
		calculator = StringCalculator.new('5')
		expect(calculator.add).to eq(5)
	end

	it 'returns the number 10 for the string "4,6"' do
		calculator = StringCalculator.new('4,6')
		expect(calculator.add).to eq(10)
	end

	it 'returns the number 15 for the string "4,6, 5"' do
		calculator = StringCalculator.new('4,6,5')
		expect(calculator.add).to eq(15)
	end

end