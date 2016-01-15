

# Introduction to Inheritance

# I worked on this challenge with Catie Stallings.


# Pseudocode
# Create a GlobalCohort object
# Create an initialize method
  # Input: students array, name, p0_start_date, email list array 
  # Output: none
  # Steps:
    # Set each argument as an variable
    # Create variable for num_of_students and set equal to length of student container
    # Create variable for immersive_start_date set equal to p0-start_date + 9 weeks
    # Create variable for graduation_date set equal to p0-start_date + 9 weeks
# Create an add_students method
#   Input: name, email
#   Output: none
#   Steps: 
#     Add given name to students array
#     Add given email to email array
# Create a remove_student method
#   Input: name, email
#   Output: none
#   Steps:
#     Remove given name from students array
#     Remove given email from email array
# Create a currently_in_phase
# Input: none
# Output: phase
# Steps:
#   Set variable to current
#   Subtract current date from p0_start_date
#   Based on the difference calculate if cohort is in phase 0, 1, 2, or 3
# Create graduated? method
#   Input: none
#   Output: true or false
#   Steps:
#     IF current date is less than graduation date
#     return false
#     ELSE
#     return true

# Create LocalCohort object
# Create initialize method:
# Input: city, array of names, array of email addresses
# Output: none
# Steps:
# Inherit variables from GlobalCohort:
#   p0_start_date
#   immersive_start_date
#   graduation_date
#   name
# Create a num_of_students variable set equal to length of name array




# Initial Solution
# require 'date'# 

# class GlobalCohort
#   attr_reader :students, :email_list
#   def initialize(students, name, p0_start_date, email_list)
#     @students = students
#     @name = name
#     @p0_start_date = p0_start_date
#     @email_list = email_list
#     @num_of_students = students.length
#     @immersive_start_date = @p0_start_date + 63
#     @graduation_date = @immersive_start_date + 63
#   end
#   
#   def add_student(student_name, student_email)
#     @students << student_name
#     @email_list << student_email
#   end
#   
#   def remove_student(student_name, student_email)
#     @students.delete_if {|name| name == student_name}
#     @email_list.delete_if {|email| email == student_email}
#   end
#   
#   def currently_in_phase
#     today = Date.today
#     if today < @p0_start_date
#       puts "Not started"
#     elsif today < @immersive_start_date
#       puts "Phase 0"
#     elsif today < (@immersive_start_date + 21)
#       puts "Phase 1"
#     elsif today < (@immersive_start_date + 42)
#       puts "Phase 2"
#     elsif today < @graduation_date
#       puts "Phase 3"
#     else
#       puts "Graduated"
#     end
#   end
#   
#   def graduated?
#       today = Date.today
#       today > @graduation_date
#   end 
# end 

# class LocalCohort < GlobalCohort
#   attr_reader :city
#   def initialize(students, name, p0_start_date, email_list, city)
#     super(students, name, p0_start_date, email_list)
#     @city = city
#   end
#     
# end

### Driver Code for initial solution

students = ["Catie", "Kevin", "Bob", "Sally"]
local_students = ["Catie"]
local_emails = ["catie.email.com"]
email_list = ["catie.email.com", "kevin.email.com", "bob.email.com", "sally.email.com"]
name = "Squirrels"

# p0_start_date = Date.new(2015,11,11)
# # test_cohort = GlobalCohort.new(students, name, p0_start_date, email_list)

# # p test_cohort.email_list
# #test_cohort.add_student("BillyBob","Bob@billy.com")
# # p test_cohort.email_list

# city = "Tokyo"
# local = LocalCohort.new(local_students, name, p0_start_date, local_emails, city)
# puts local.students
# puts local.city
# puts local.email_list
# puts local.graduated?
# puts local.currently_in_phase
# local.remove_student("Catie", "catie.email.com")
# local.add_student("BillyBob","Bob@billy.com")
# p local.students
# p local.email_list

# Refactored Solution
require 'date'

class GlobalCohort
  attr_reader :students, :email_list, :name, :p0_start_date, :immersive_start_date, :graduation_date
  def initialize(students, name, p0_start_date, email_list)
    @students = students
    @name = name
    @p0_start_date = p0_start_date
    @email_list = email_list
    @num_of_students = students.length
    @immersive_start_date = @p0_start_date + 63
    @graduation_date = @immersive_start_date + 63
    @today = Date.today
  end
  
  def add_student(student_name, student_email)
    @students << student_name
    @email_list << student_email
  end
  
  def remove_student(student_name, student_email)
    @students.delete_if {|name| name == student_name}
    @email_list.delete_if {|email| email == student_email}
  end
  
  def currently_in_phase
    if @today < @p0_start_date
      puts "Not started"
    elsif @today < @immersive_start_date
      puts "Phase 0"
    elsif @today < (@immersive_start_date + 21)
      puts "Phase 1"
    elsif @today < (@immersive_start_date + 42)
      puts "Phase 2"
    elsif @today < @graduation_date
      puts "Phase 3"
    else
      puts "Graduated"
    end
  end
  
  def graduated?
    @today > @graduation_date
  end 
end

class LocalCohort < GlobalCohort
  attr_reader :city
  def initialize(students, name, p0_start_date, email_list, city)
    super(students, name, p0_start_date, email_list)
    @city = city
  end
end



p0_start_date = Date.new(2015,11,11)
test_cohort = GlobalCohort.new(students, name, p0_start_date, email_list)

p test_cohort.email_list
test_cohort.add_student("BillyBob","Bob@billy.com")
p test_cohort.email_list
puts test_cohort.immersive_start_date

city = "Tokyo"
local = LocalCohort.new(local_students, name, p0_start_date, local_emails, city)
p local.students
puts local.graduated?
puts local.city
p local.email_list

puts local.currently_in_phase
local.remove_student("Catie", "catie.email.com")
local.add_student("BillyBob","Bob@billy.com")
p local.students
p local.email_list


# Reflection

#What concepts did you review in this challenge?
#What is still confusing to you about Ruby?
#What are you going to study to get more prepared for Phase 1?
