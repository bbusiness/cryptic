require 'nokogiri'
require 'open-uri'
require 'cryptocompare'

class Coin < ApplicationRecord
  after_find :update_price



  def update_price
    update(current_price: convert_to_dollar) if time_to_last_update > max_price_age
  end

  private

  def convert_to_dollar
    Cryptocompare::Price.find(symbol, "USD")[symbol]["USD"]
  end

  def time_to_last_update
    Time.now-updated_at
  end

end
