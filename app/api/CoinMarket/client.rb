module CoinMarket
  class Client
    def self.listings
      response = Request.call(http_method: 'get', endpoint: '/v1/cryptocurrency/listings/latest')
    end

    def self.quote(sym="BTC")
      response = Request.call(http_method: 'get', endpoint: "/v1/cryptocurrency/quotes/latest?symbol=#{sym}")
    end
  end
end