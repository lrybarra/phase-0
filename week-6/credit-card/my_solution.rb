

class CreditCard

	def initialize(cc_num)
		if cc_num.to_s.length != 16
			raise ArgumentError.new("Invalid Credit Card Number!")
		else
			@cc_num = cc_num.to_s
		end
	end

	def double_digits
		@dbl_str = ""
		index = 1
		@cc_num.each_char do |ch|
			if index % 2 != 0
				ch = (ch.to_i * 2).to_s	
			end
			@dbl_str << ch
			index += 1
		end
	end

	def check_card
		double_digits
		running_total = 0
		@dbl_str.each_char do |ch|
			running_total += ch.to_i
		end

		if running_total % 10 == 0
			return true
		else
			return false
		end
	end

end

#my_cc = CreditCard.new(1234567812345678)
my_cc = CreditCard.new(4563960122001999)
my_cc.check_card
