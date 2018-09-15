class Accounting::Category < ApplicationRecord
  has_ancestry orphan_strategy: :restrict

  def self.max_depth
    4
  end
end
