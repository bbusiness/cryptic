require 'nokogiri'
require 'open-uri'
require 'cryptocompare'

class Coin < ApplicationRecord
  def convert_to_dollar
    Cryptocompare::Price.find(symbol, "USD")[symbol]["USD"]
  end

end
