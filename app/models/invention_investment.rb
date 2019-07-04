class InventionInvestment < ApplicationRecord
  belongs_to :user, -> { where(investor: true) }
  belongs_to :invention

  validates :amount, :presence => :true




end
