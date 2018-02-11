class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.integer :wardId
      t.datetime :journalDate
      t.string :vendor
      t.integer :expenseType
      t.text :description
      t.integer :account
      t.decimal :amount

      t.timestamps
    end
  end
end
