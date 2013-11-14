class StringCalculator
	attr_reader :string_of_numbers

	def initialize(string_of_numbers)
		@string_of_numbers = string_of_numbers
	end

	def add
		if string_of_numbers.length <= 1
			string_of_numbers.to_i
		else
			array_of_numbers = string_of_numbers.split(',')
			array_of_numbers.each { |number| total += number.to_i }
			return total
		end
	end
end
