require 'rspec'
require 'string_calculator'

describe StringCalculator do

	let(:calculator) { StringCalculator.new(@test_string) }

	it "returns the number 0 for an empty string" do
		@test_string = ""
		expect(calculator.add).to eq(0)
	end

	it "returns the number 15 for the string '4,6,5'" do
		@test_string = "4,6,5"
		expect(calculator.add).to eq(15)
	end

end