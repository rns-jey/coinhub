class HomeController < ApplicationController
  def index
    @cryptos = CoinMarket::Client.listings[:data]["data"]
  end
end