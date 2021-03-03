require 'rest-client'
require 'nokogiri'
require 'byebug'

class WebsiteTitleScrapper
	def self.call(url)
		response = RestClient.get(url)
		Nokogiri::HTML(response.body).at('title').text
	end
end

title = WebsiteTitleScrapper.call("https://www.online-pajak.com/")
puts title