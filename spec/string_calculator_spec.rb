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

	it "returns the number 15 for the string '4\n6,5'" do
		@test_string = "4\n6,5"
		expect(calculator.add).to eq(15)
	end

	it "returns the number 15 for the string '4:6:5'" do
		@test_string = "4:6:5"
		calculator = StringCalculator.new(@test_string, ":")
	#pencils down:  Need to revise test so that it passes when "delimiter" is not passed in (using Let in Line 6).

		expect(calculator.add).to eq(15)
	end


end