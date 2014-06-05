#set the plateau by x and y boundaries
user = ARGV.first
class Plateau
  	def initialize
  		puts "Boundaries?"
		bounds = STDIN.gets.chomp()
		boundsarray = bounds.split(/ /)
		@xbound = boundsarray[0].to_i
		@ybound = boundsarray[1].to_i
 		puts "Boundaries are #{@xbound} and #{@ybound}"
 	end
end

newplat = Plateau.new

# This module regulates the movements as directed from inputs.
module Movements
def movement(command)
	case command

	when "L"
		case @direction
		when "N"
			@direction = "W"
		when "W"	
			@direction = "S"
		when "S"
			@direction = "E"
		when "E"	
			@direction = "N"
		else
			p "Error"
	end

	when "R"
		case @direction
		when "N"
			@direction = "E"
		when "E"
			@direction = "S"
		when "S"
			@direction = "W"
		when "W"
			@direction = "N"
		else
			p "Error"
	end

	when "M"	
		case @direction
		when "N"
			@ystart +=1
		when "S"
			@ystart -=1
		when "E"
			@xstart +=1
		when "W"
			@xstart -=1
		else 
			p "Error"
	end	
	else
		p "Error"
	end
	end
end			
# 	def movement(command)
# 		if command == "L"
# 			if @direction == "N" 
# 				@direction = "W"
# 			elsif @direction == "W"
# 				@direction = "S"
# 			elsif @direction == "S"
# 				@direction = "E"
# 			elsif
# 				@direction == "E"		
# 				@direction = "N"	
# 			else
# 				puts "Error, please input proper movement."			
# 			end	
		
# 		elsif command == "R"
# 			if @direction == "N"
# 				@direction = "E"
# 			elsif @direction == "E"
# 				@direction = "S"
# 			elsif @direction == "S"
# 				@direction = "W"
# 			elsif @direction == "W"
# 				@direction = "N"
# 			else
# 				puts "Error, please input proper movement."				
# 			end	
		
# 		elsif command == "M"
# 			if @direction == "N"
# 				@ystart +=1
# 			elsif @direction == "S"
# 				@ystart -=1
# 			elsif @direction == "E"
# 				@xstart +=1
# 			elsif @direction == "W"
# 				@xstart -=1
# 			else
# 				puts "Error"
# 			end
# 		end
		
# 	end	
# end	

# This class is for Rovers.
class Rover 
	include Movements
	attr_accessor :xstart, :ystart, :direction
	
	def greeting
		puts "#{@xstart}, #{@ystart}, #{@direction}"
	end	
end

#Call for the two rovers inputs
rove1 = Rover.new
puts "Start?"
input = STDIN.gets.chomp()
inputarray = input.split(/ /)
rove1.xstart = inputarray[0].to_i
rove1.ystart = inputarray[1].to_i
rove1.direction = inputarray[2]
puts "Movement?"
moves = STDIN.gets.chomp()
movesarray = moves.split(//)
movesarray.each {|c| rove1.movement(c)}

rove2 = Rover.new
puts "Start?"
input = STDIN.gets.chomp()
inputarray = input.split(/ /)
rove2.xstart = inputarray[0].to_i
rove2.ystart = inputarray[1].to_i
rove2.direction = inputarray[2]
puts "Movement?"
moves = STDIN.gets.chomp()
movesarray = moves.split(//)
movesarray.each {|c| rove2.movement(c)}

rove1.greeting
rove2.greeting


# rove1 = Rover.new
# puts "What is the x start?"
# rove1.xstart = gets.to_i
# puts "What is the y start?"
# rove1.ystart = gets.to_i
# puts "What is the starting direction?"
# rove1.direction = gets.chomp.to_s.upcase
# "LMLMLMLMM".each_char {|c| rove1.movement(c)}


# rove2 = Rover.new
# puts "What is the x start?"
# rove2.xstart = gets.to_i
# puts "What is the y start?"
# rove2.ystart = gets.to_i
# puts "What is the starting direction?"
# rove2.direction = gets.chomp.to_s.upcase
# "MMRMMRMRRM".each_char {|c| rove2.movement(c)}

# rove1.greeting

# rove2.greeting

# rove2 = Rover.new
# rove2.xstart = 3
# rove2.ystart = 3
# rove2.direction = "E"
# "MMRMMRMRRM".each_char {|c| rove2.movement(c)}
# rove2.greeting

# INPUT AND OUTPUT
 
# Test Input:
# 5 5
# 1 2 N
# LMLMLMLMM
# 3 3 E
# MMRMMRMRRM
 
# Expected Output:
# 1 3 N
# 5 1 E