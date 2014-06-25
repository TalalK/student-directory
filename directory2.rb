
def print_header
  p "The students of my cohort at Makers Academy"
  p "-------------"
end

@line_width = 50

def print(students)
	count = 0
  	while count < students.length do
    	p "#{students[count][:name]} #{students[count][:cohort]} cohort, #{students[count][:hobby]}".center(@length_width) if students[count][:name].start_with?("C", "c") && students[count][:name].length < 12
   	 	count = count + 1
  	end
end
# changed student.each() to print using a while loop

def print_footer(names)    
  p "Overall, we have #{names.length} great students"
end

def input_students
	p "Please enter the name of the student"
	# create an empty array
 	students = []
 	# get the first name
 	name = gets.gsub(/\n/,"").capitalize
 	while !name.empty? do
 		# while the name is not empty, repeat this code
 		loop do
 			require "date"
		p "Please enter the Month of the Cohort"
		# get cohort
		@cohort = gets.chomp.capitalize.to_sym
		break if Date::MONTHNAMES.include?(@cohort.to_s)
		end
		# Looping until they get the date corret.		
		p "Please enter the Hobby of the student"	
		# get hobby
		hobby = gets.chomp.capitalize.to_sym
		# add new values to array
		students << {:name => name, :cohort =>@cohort, :hobby => hobby}
		if students.length == 1

			p "Now we have #{students.length} student"	
			else p "Now we have #{students.length} students"	
		end
		p "Please enter the name of another student, or press return to finish"
		# get another name
		name = gets.chomp.capitalize
	end
	students

end

students = input_students
print_header
print(students)
print_footer(students)