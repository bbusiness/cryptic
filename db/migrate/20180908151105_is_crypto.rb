class IsCrypto < ActiveRecord::Migration[5.2]
  def change
    add_column :coins, :is_crypto?, :boolean, default: true
    add_column :coins, :type, :string
  end
end
