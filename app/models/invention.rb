class Invention < ApplicationRecord
  belongs_to :inventor
  has_many :invention_investments
  has_many :investors, through: :invention_investments

  validates :description, :presence => :true
  validates :name, :uniqueness, => :true 
end
