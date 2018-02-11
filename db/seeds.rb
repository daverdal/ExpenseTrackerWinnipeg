# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin
1000.times do
  Expense.create{
        wardId: Faker::Commerce.unique.product_name,
        journalDate: Faker::Date,
        vendor: Faker::StarWars,
        description: "#{Faker::Commerce.material}.",
        account: Faker::Number.digit()),
        amount: Faker::Commerce.price
  }
end
=end

t.integer :wardId
t.datetime :journalDate
t.string :vendor
t.integer :expenseType
t.text :description
t.integer :account
t.decimal :amount