class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :kind
      t.string :symbol
      t.float :unit_price
      t.decimal :amount, :precision => 15, :scale => 10
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
