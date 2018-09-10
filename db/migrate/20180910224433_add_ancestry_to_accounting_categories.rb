class AddAncestryToAccountingCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :accounting_categories, :ancestry, :string
    add_index :accounting_categories, :ancestry
  end
end
