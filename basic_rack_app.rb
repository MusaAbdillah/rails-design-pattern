require "rack/handler/puma"

class HelloWorld
	def call(environment)
		status = 200
		headers = { 'Content-Type' => 'text/plain'}
		body = ["Hello", "World"]

		[status, headers, body]
	end
end

Rack::Handler::Puma.run(HelloWorld.new)