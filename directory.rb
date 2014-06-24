student_count = 20

students = [
 { :name => "Dave", :cohort => :June},
 { :name =>"Eddie", :cohort => :June},
 { :name =>"Catharina", :cohort => :June},
 { :name =>"Igor", :cohort => :June},
 { :name =>"Marco", :cohort => :June},
 { :name =>"Lisa", :cohort => :June},
 { :name =>"Michiel", :cohort => :June},
 { :name =>"Jean", :cohort => :June},
 { :name =>"Nicola", :cohort => :June},
 { :name =>"Jennie" , :cohort => :June},
 { :name =>"Iona", :cohort => :June},
 { :name =>"Nikesh", :cohort => :June},
 { :name =>"Chloe", :cohort => :June},
 { :name =>"Jamie", :cohort => :June},
 { :name =>"Peter", :cohort => :June},
 { :name =>"Talal", :cohort => :June},
 { :name =>"Charlie", :cohort => :June},
 { :name =>"Thomas", :cohort => :June},
 { :name =>"Charlotte", :cohort => :June},
 { :name =>"Zoe", :cohort => :June},
 { :name =>"Hannah", :cohort => :June}
]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "----------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
 puts "Overall, we have #{names.length} great students"
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
 
 	students = []
 	name = gets.chomp
 while !name.empty? do
	students << {:name => name, :cohort => "June"}

	puts "Now we have #{students.length} students"
	name = gets.chomp 

end

 	students
end

students = input_students
print_header
print(students)
print_footer(students)
