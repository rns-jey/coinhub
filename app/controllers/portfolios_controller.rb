class PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all
    @symbols = Portfolio.pluck(:symbol).join(",")
    @cryptos = CoinMarket::Client.quote(@symbols)[:data]["data"]
  end

  def new
    @portfolio = Portfolio.new
    #@amt = params[:amt]
    @cryptos = Cryptocurrency.pluck(:symbol) - Portfolio.pluck(:symbol)
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