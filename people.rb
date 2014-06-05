class Person
	attr_accessor :name

	def greeting

		 p "Hi, my name is #{@name}"
	end
end	

# teach = Person.new
# teach.name = "Chris" 
# teach.greeting

class Student < Person
	def learn
		p "I get it!"
	end	
end

class Instructor < Person
	def teach
		p "Everything in Ruby is an Object"
	end	
end

teacher = Instructor.new
teacher.name = "Chris"
teacher.greeting
teacher.teach
#teacher.learn doesn't work since it is not defined in the same class

student1 = Student.new
student1.name = "Cristina"
student1.greeting
student1.learn
#student1.teach doesn't work since it is not defined in the same class
