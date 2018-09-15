class AddNumberToAccountingCategories < ActiveRecord::Migration[5.2]
  def change
      add_column :accounting_categories, :number, :string
  end
end
