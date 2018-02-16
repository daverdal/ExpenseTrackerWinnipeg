class Expense < ApplicationRecord
   belongs_to :ward
   validates :vendor, :description, :account,:amount, presence: true

end
