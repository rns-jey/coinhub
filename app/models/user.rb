class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :portfolios, dependent: :destroy
  has_many :transactions, dependent: :destroy
  has_one :wallets, dependent: :destroy

  after_create :create_user_wallet

  def active_for_authentication? 
    super && approved? 
  end 
    
  def inactive_message 
    approved? ? super : :not_approved
  end

  def create_user_wallet
    user_wallet = Wallet.new(user_id: id, balance: 1000000)
    user_wallet.save
  end
end
