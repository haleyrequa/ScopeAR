
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
			width = (mid - line).abs * 4 + 1
			space = (@height - ((mid - line).abs * 2 + 1)).abs
			puts " " * space + "X" + (width > 1 ? " " * (width - 2) + "X2" : "")


			# space = " " * (@height - h)
			# tree = "*" * (h * 2 - 1)
			# puts space + tree

		# 	x0 = line < mid ? line : @height - (line - 1)
		# 	x1 = line < mid ? @height - line - line : 2 * (line - mid) - 1
		# 	puts " " * x0 + "*" + (x1 > 0 ? " " * x1 + "*" : "")
		end
	end
end


# 1	xooox	5
# 2	 xox	3
# 3	  x 	1
# 4	 xox 	3
# 5	xooox 	5