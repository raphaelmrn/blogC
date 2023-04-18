class series < ApplicationRecord

require 'httparty'

response = HTTParty.get('https://api.tcgdex.net/v2/en/series/:name')

puts response.body if response == 200
