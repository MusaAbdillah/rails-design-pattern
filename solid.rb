
class Employee
	def initialize(email)
		@email = email
	end
	attr_accessor :email
end

class User
	def initialize(employee, month)
		@employee = employee
		@month = month
	end

	attr_reader :employee, :month

	def generate_payslip
		# Code to read from database,
		# generate payslip
		# and write it to a file
		self.send_email
	end

	def send_email
		# code to send email
		puts "#{employee.email}"
		month
	end
end

month = 11
employee = Employee.new(email: "musa@gmail.com")
user = User.new(employee, month)
user.generate_payslip
employee.email = "musa.abdillah@gmail.com"
user.generate_payslip