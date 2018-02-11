json.extract! expense, :id, :wardId, :journalDate, :vendor, :expenseType, :description, :account, :amount, :created_at, :updated_at
json.url expense_url(expense, format: :json)
