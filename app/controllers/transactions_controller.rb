class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
    @zone = Time.local(2000, 1, 1).zone
  end

  def new
    @transaction = Transaction.new
    @crypto = current_user.portfolios.where(symbol: params[:coin]).first
    @transaction_type = params[:side]
    @price = CoinMarket::Client.quote(@crypto.symbol)[:data]["data"][@crypto.symbol]["quote"]["USD"]["price"]
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @crypto = current_user.portfolios.where(symbol: @transaction.symbol).first
    @crypto.amount = @transaction.kind == "BUY" ? @crypto.amount + @transaction.amount : @crypto.amount - @transaction.amount
    @transaction.status = "Fulfilled"

    if @transaction.save
      @crypto.save
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