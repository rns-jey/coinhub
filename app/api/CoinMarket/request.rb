require 'rest-client'

module CoinMarket
  class Request
    BASE_URL = 'https://pro-api.coinmarketcap.com'
    TOKEN = ENV["COINMARKET_API_KEY"]

    def self.call(http_method:, endpoint:)
      result = RestClient::Request.execute(
        method: http_method,
        url: "#{BASE_URL}#{endpoint}",
        headers: {
          'Content-Type'=> 'application/json',
          'X-CMC_PRO_API_KEY' => TOKEN
        }
      )
      {code: result.code, status: 'Success', data:JSON.parse(result)}
    rescue RestClient::ExceptionWithResponse => error
      {code: error.http_code, status: error.message, data:Errors.map(error.http_code)}
    end
  end
end