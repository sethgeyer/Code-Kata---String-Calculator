class StringCalculator
	attr_reader :string_of_numbers

	def initialize(string_of_numbers, delimiter = nil)
		if delimiter == nil
			@spacer = ""
		else
			@spacer = delimiter
		end
		@string_of_numbers = string_of_numbers.gsub("\n", @spacer)
	end

	def add
			array_of_numbers = string_of_numbers.split(@spacer)
			array_of_numbers.inject(0) { |sum, number| sum + number.to_i }
	end
end
