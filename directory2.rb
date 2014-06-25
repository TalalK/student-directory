
def print_header
  p "The students of my cohort at Makers Academy"
  p "-------------"
end

def print(students)
  students.until do |student|
    p "#{student[:name]} #{student[:cohort]} cohort, #{student[:hobby]}, #{student[:nationality]}" if student[:name].start_with?("C", "c") && student[:name].length < 12
  end
end

def print_footer(names)    
  p "Overall, we have #{names.length} great students"
end

def input_students
  p "Please enter the names of the students"
  p "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do    
    # add the student hash to the array
    students << {:name => name, :cohort => :July} if #{student:name}
    p "Now we have #{students.length} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

students = input_students
print_header
print(students)
print_footer(students)