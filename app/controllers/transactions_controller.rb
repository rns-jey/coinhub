class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
    @crypto = Portfolio.where(symbol: params[:coin]).first
    @transaction_type = params[:side]
    @price = CoinMarket::Client.quote(@crypto.symbol)[:data]["data"][@crypto.symbol]["quote"]["USD"]["price"]
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @crypto = Portfolio.where(symbol: @transaction.symbol).first
    @crypto.amount = @transaction.kind == "BUY" ? @crypto.amount + @transaction.amount : @crypto.amount - @transaction.amount
    @crypto.save if @transaction.save

    if @transaction.save
      redirect_to portfolios_path
    else
      render :new, status: :unprocessable_entity
     end
  end

  private
    def transaction_params
      params.require(:transaction).permit(:kind, :symbol, :unit_price, :amount, :total_price, :fee, :final_price, :currency, :status, :user_id)
    end

end