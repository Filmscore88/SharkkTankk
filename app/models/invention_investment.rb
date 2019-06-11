class InventionInvestment < ApplicationRecord
  belongs_to :investor
  belongs_to :invention
  after_create :invention_invested_status
  validates :amount, :presence => :true



  def invention_invested_status
    self.invention.invested? = true
  end

end
