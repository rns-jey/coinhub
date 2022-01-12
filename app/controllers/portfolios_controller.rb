class PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
    @cryptos = Cryptocurrency.pluck(:name) - Portfolio.pluck(:name)
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    @crypto = Cryptocurrency.where(name: @portfolio.name).first

    @portfolio.symbol = @crypto.symbol
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