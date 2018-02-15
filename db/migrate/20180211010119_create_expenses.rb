class CreateExpenses < ActiveRecord::Migration[5.1]
  def change

    create_table :expenses do |t|
      t.integer :wardNumber
      t.datetime :journalDate
      t.string :vendor
      t.string :expenseType
      t.string :description
      t.string :account
      t.decimal :amount
    end
  end
end
