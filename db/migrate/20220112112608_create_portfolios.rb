class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.string :name
      t.string :symbol
      t.string :slug
      t.float :amount
      t.string :status
      t.integer :user_id
      
      t.timestamps
    end
  end
end
