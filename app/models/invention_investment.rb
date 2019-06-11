class InventionInvestment < ApplicationRecord
  belongs_to :investor
  belongs_to :invention
  scope :belongs_to_inventor, -> (ids){ where('invention_id = ?', current_user.inventions.ids ) }

end
