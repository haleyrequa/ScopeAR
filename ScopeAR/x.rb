
# The X class prompts the user to define a height of the X, and draws the X out of text.
class X

	# INTEGER Height variable determines how many rows hight the X will be
	@height

	# Initalizes the X to be 5 rows high.
	def initialize
		@height = 5
	end

	# PromptHeight Method prompts the user via command line to define the height of the X.
	def promptHeight
		puts "How many rows high would you like your X to be?"
		@height = gets.to_i
	end

	# Draw Method displays an X out of text.
	def draw
		puts "\n"
		mid = (@height/2.0).ceil
		for line in 1..@height
			space0 = (mid - (mid-line).abs).abs
			space1 = (mid - line).abs * 2 - 1
			puts space1 > 0 ?
				 "  " * space0 + "X " + "  " * space1 + "X" :
				 "  " * space0 + "X"
		end
	end
end