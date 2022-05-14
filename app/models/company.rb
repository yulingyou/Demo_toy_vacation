class Company < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :bulletins, dependent: :destroy
  has_many :departments, dependent: :destroy
end
