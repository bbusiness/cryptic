class CreateAccountingCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :accounting_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
