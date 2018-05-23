class Username < ApplicationRecord
  validates :identifier, uniqueness: true
  validates :email, uniqueness: true
end
