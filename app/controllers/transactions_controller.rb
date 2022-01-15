class TransactionsController < ApplicationController
  def index
    @transactions = current_user.transactions
  end

  def new
    @transaction = Transaction.new
    @crypto = current_user.portfolios.where(symbol: params[:coin]).first
    @crypto_balance = current_user.portfolios.where(symbol: @crypto.symbol).first.amount
    @wallet_balance = Wallet.where(user_id: current_user.id).first.balance
    @transaction_type = params[:side]
    @price = CoinMarket::Client.quote(@crypto.symbol)[:data]["data"][@crypto.symbol]["quote"]["USD"]["price"]
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @crypto = current_user.portfolios.where(symbol: @transaction.symbol).first
    @crypto.amount = @transaction.kind == "BUY" ? @crypto.amount + @transaction.amount : @crypto.amount - @transaction.amount
    @transaction.status = "Fulfilled"
    @user_wallet = Wallet.where(user_id: current_user.id).first
    @user_wallet.balance = @transaction.kind == "BUY" ? @user_wallet.balance - @transaction.final_price : @user_wallet.balance + @transaction.final_price

    if @transaction.save
      @crypto.save
      @user_wallet.save
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