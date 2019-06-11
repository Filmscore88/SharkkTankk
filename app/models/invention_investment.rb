class InventionInvestment < ApplicationRecord
  belongs_to :investor
  belongs_to :invention
  #scope :belongs_to_inventor,(current_user.id) -> { where('invention_id = ?', () ) }

end
