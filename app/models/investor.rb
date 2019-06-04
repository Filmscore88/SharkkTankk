class Investor < ApplicationRecord
  has_many :invention_investments
  has_many :inventors, through: :invention_investments
end
