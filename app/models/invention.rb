class Invention < ApplicationRecord
  belongs_to :user #-> { where(inventor: true) }
  has_many :invention_investments
#  has_many :users, -> { where(investor: true) }, through: :invention_investments
  scope :invested, -> { where(invested?: true) }
  validates :name, :presence => :true
  validates :description, :presence => :true

end
