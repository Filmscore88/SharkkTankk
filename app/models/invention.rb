class Invention < ApplicationRecord
  belongs_to :inventor
  has_many :invention_investments
  has_many :investors, through: :invention_investments
  scope :invested, -> { where(invested?: true) }
  validates :description, :presence => :true

end
