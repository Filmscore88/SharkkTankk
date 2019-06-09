class Investor < ApplicationRecord
  has_many :invention_investments
  has_secure_password
end
