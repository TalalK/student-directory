student_count = 20

students = [
 { :name =>"Dave", :cohort => :June},
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
	p "The students of my cohort at Makers Academy"
	p "----------------"
end


def print(students)
		students.each do |student|
		p "#{student[:name]} (#{student[:cohort]} cohort)" if student(:name).start_with?("C", "c")
		end
end

def print_footer(names)
 p "Overall, we have #{names.length} great students"
end

def input_students
	p "Please enter the names of the students"
	p "To finish, just hit return twice"
 
 	students = []
 	name = gets.chomp
 while !name.empty? do
	students << {:name => name, :cohort => "June"}

	p "Now we have #{students.length} students"
	name = gets.chomp 

end

 	students
end

students = input_students
print_header
print(students)
print_footer(students)