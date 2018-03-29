
# This main ruby file creates a Christmas Tree class Object, and and X class Object.
# It class prompt and draw methods from these classes, to essentially draw
# an X and a Christmas tree out of text, with the users choice of height.

require './christmas_tree' # Christmas tree class draws a tree out of text
require './x' # X class draws an X out of text

puts "Hi there!"

christmasTree = ChristmasTree.new
christmasTree.promptHeight()
christmasTree.draw()

x = X.new
x.promptHeight()
x.draw()
