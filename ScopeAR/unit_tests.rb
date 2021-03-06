
require 'test/unit'
require './christmas_tree'
require './x'

# Unit Test Class tests the methods from the Christmas Tree Class and the X Class
class UnitTests < Test::Unit::TestCase

	# Christmas Tree test method - when height prompt method isn't called to initialize height: 
	def test_christmas_draw_without_prompt
		@christmas_tree = ChristmasTree.new
		@christmas_tree.draw
	end

	# X test method - when height prompt method isn't called to initialize height: 
	def test_x_draw_without_prompt
		@x = X.new
		@x.draw
	end

	# Christmas tree test method - when height prompt method isn't given a integer: 
	def test_christmas_draw_with_wrong_input
		@christmas_tree = ChristmasTree.new
		with_stdin do |user|
			user.puts "Fake user input string"
			assert_equal(@christmas_tree.promptHeight, 0)
		end
		@christmas_tree.draw
	end

	# X test method - when height prompt method isn't given a integer: 
	def test_x_draw_with_wrong_input
		@x = X.new
		with_stdin do |user|
			user.puts "Fake user input string"
			assert_equal(@x.promptHeight, 0)
		end
		@x.draw
	end

	# This code "with_stdin" was referenced from 
	# https://stackoverflow.com/a/16950202
	# to test the input
	def with_stdin
	    stdin = $stdin             # remember $stdin
	    $stdin, write = IO.pipe    # create pipe assigning its "read end" to $stdin
	    yield write                # pass pipe's "write end" to block
	  ensure
	    write.close                # close pipe
	    $stdin = stdin             # restore $stdin
	  end
end

