# Methods
def print_header
  puts "the students of Villains Academy"
  puts "-------------"
end

def print(students)
     students.each_with_index do |student, index|
      puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    name.downcase!
    if name.length <= 12
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
    else
    puts "Enter a name shorter than 12 characters"
    name = gets.chomp
    end
  end
    # return the array of students
    students
end
# nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
