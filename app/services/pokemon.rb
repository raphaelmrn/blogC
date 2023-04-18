class Pokemon < ApplicationRecord

require 'httparty'

response = HTTParty.get('https://api.tcgdex.net/v2/en/series/:name')

