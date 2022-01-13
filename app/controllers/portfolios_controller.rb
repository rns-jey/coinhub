class PortfoliosController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @portfolios = current_user.portfolios
    @symbols = current_user.portfolios.pluck(:symbol).join(",")
    @cryptos = CoinMarket::Client.quote(@symbols)[:data]["data"]
  end

  def new
    @portfolio = Portfolio.new
    @cryptos = Cryptocurrency.pluck(:name, :symbol) - current_user.portfolios.pluck(:name, :symbol)
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    @crypto = Cryptocurrency.where(symbol: @portfolio.symbol).first

    @portfolio.name = @crypto.name
    @portfolio.slug = @crypto.slug
    @portfolio.amount = 0.00
    @portfolio.user_id = current_user.id

    if @portfolio.save
      redirect_to portfolios_path
    else
      render :new, status: :unprocessable_entity
     end
  end

  private
    def portfolio_params
      params.require(:portfolio).permit(:name, :symbol, :slug, :amount, :status, :user_id)
    end

end