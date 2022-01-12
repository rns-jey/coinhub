class PortfolioController < ApplicationController
  def index
    @portfolios = Portfolio.all
  end
end