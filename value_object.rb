class Email 
	def initialize(value)
		@value = value
	end

	def value_split()
		@value.split('@')
	end

	def domain
		value_split.last
	end

	def username
		value_split.first
	end
end

email 		= Email.new("john@gmail.com")
username 	= email.username
domain 		= email.domain
puts "username #{username} using domain #{domain}"
