class CreateCoins < ActiveRecord::Migration[5.2]
  def change
    create_table :coins do |t|
      t.string :symbol
      t.string :name
      t.text :description
      t.decimal :value

      t.timestamps
    end
  end
end
