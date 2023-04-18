class cards < ApplicationRecord
require 'httparty'

response = HTTParty.get('https://api.tcgdex.net/v2/fr/cards/:id')

puts response.body if response == 200