class InventionInvestment < ApplicationRecord
  belongs_to :investor
  belongs_to :inventor
  belongs_to :invention

end
