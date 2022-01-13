class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :kind
      t.string :symbol
      t.float :unit_price
      t.float :amount
      t.float :total_price
      t.float :fee
      t.float :final_price
      t.string :currency
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
