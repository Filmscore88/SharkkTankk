class InventionInvestment < ApplicationRecord
  belongs_to :investor
  belongs_to :invention

  validates :amount, :presence => :true



end
