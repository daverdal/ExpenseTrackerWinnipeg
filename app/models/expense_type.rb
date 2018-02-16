class ExpenseType < ApplicationRecord
  belongs_to :expense
  validates :description, true
end
