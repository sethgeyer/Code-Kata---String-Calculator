class StringCalculator
	attr_reader :string_of_numbers

	def initialize(string_of_numbers)
		@string_of_numbers = string_of_numbers
	end

	def add
			array_of_numbers = string_of_numbers.split(',')
			array_of_numbers.inject(0) { |sum, number| sum + number.to_i }
	end
end
