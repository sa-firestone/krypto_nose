class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ["BTC", "XRP", "ADA", "XLM", "STEEM",]
  end
  
  def about
  end
  
  def sniff
    require 'net/http'
    require 'json'
    
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @sniff_coin = JSON.parse(@response)

    @symbol = params[:sym]
  
    if @symbol
      @symbol = @symbol.upcase
    end
    
    if @symbol == ""
      @symbol = "Hey, gimme a trail up there!!"
    end
    
  end
end
