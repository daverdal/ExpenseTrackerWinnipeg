# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Faker::Name.name

Ward.delete_all
require 'csv'

csv_wards = File.read(Rails.root.join('lib', 'seeds', 'wards.csv'))
csv = CSV.parse(csv_wards, :headers => false, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Ward.new
  t.wardNumber = row[0]
  t.name = row[1]
  t.councilor = row[2]
  t.save
  puts "#{t.name}.......... #{t.councilor} saved"
end

#ExpenseTypes
ExpenseType.delete_all
10.times do |row|
  t = ExpenseType.new
  t.description = Faker::Friends.location
  t.save
  puts "#{t.description} saved"
end



Expense.delete_all
csv_text = File.read(Rails.root.join('lib', 'seeds', 'expenses.csv'))
csv1 = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv1.each do |row|
  #get the ward and attach it to the expense below....
 # if(row[8] != nil)
  ward1 = Ward.find_by_wardNumber(row[0])
  expenseType1 = ExpenseType.last
    t = Expense.new
  t.expenseType = expenseType1
    t.ward = ward1
   t.wardNumber = row[0]
    t.journalDate = row[3]
     t.vendor = row[4]
     t.expenseType = row[5]
     t.description = row[6]
     t.account = row[7]
    t.amount = row[8].gsub(/\D/,'').to_f
    t.save
 #end
  puts "#{t.wardNumber},#{t.journalDate},  #{t.vendor},  #{t.expenseType},  #{t.description}, #{t.account}, #{t.amount} "
end





puts "There are now #{Expense.count} Expense claims in the system"
puts "There are now #{Ward.count} Wards in the system"
puts "Faker:Name.name is: #{Faker::Name.name}"



