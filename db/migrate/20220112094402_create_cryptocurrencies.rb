class CreateCryptocurrencies < ActiveRecord::Migration[6.0]
  def change
    create_table :cryptocurrencies do |t|
      t.string :name
      t.string :kind
      t.string :symbol
      t.string :slug
      t.boolean :is_active
      
      t.timestamps
    end
  end
end
