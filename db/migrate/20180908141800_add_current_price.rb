class AddCurrentPrice < ActiveRecord::Migration[5.2]
  def change
    add_column :coins, :current_price, :decimal
  end
end
