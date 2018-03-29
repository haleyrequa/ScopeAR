
# The Christmas Tree class prompts the user to define a height of the tree, and also draws the tree.
class ChristmasTree

	# INTEGER Height variable determines how many rows hight the tree will be
	@height

	# Initalizes the Christmas tree to be 9 rows high.
	def initialize
		@height = 9
	end

	# PromptHeight Method prompts the user via command line to define the height of the tree.
	def promptHeight
		puts "How many rows high would you like your Christmas tree to be?"
		@height = gets.to_i
	end

	# Draw Method displays a Christmas tree with alternating rows of garland!
	def draw
		puts "\n"
		for h in 1..@height
			symbol = "*"
			if h % 3 == 0
				symbol = "x"
			elsif (h + 1) % 3 == 0
				symbol = "o"
			end

			space = " " * (@height - h)
			tree = symbol * (h * 2 - 1)
			puts space + tree
		end
	end
end