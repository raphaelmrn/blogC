class set < ApplicationRecord

require 'httparty'

response = HTTParty.get('https://api.tcgdex.net/v2/en/sets')

puts response.body if response == 200