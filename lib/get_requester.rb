# Write your code here
require 'pry'
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
    attr_accessor :url

    def initialize(url)
        @url = url
        self.get_response_body
    end

    def get_response_body
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        JSON.parse(self.get_response_body)
    end


end

binding.pry