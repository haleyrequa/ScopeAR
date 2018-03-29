
require './christmas_tree' # Christmas tree class draws a tree out of text
require './x' # X class draws an X out of text

puts "Hi there!"

christmasTree = ChristmasTree.new
christmasTree.promptHeight()
christmasTree.draw()

x = X.new
x.promptHeight()
x.draw()
