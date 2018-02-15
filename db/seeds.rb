# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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

Expense.delete_all
puts "this is from the seeds.db file..!!!!!!!!!!!!!@@@@@@@@@@@@@!!!!!!!!!!!!!"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'expenses.csv'))
csv1 = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv1.each do |row|
  #get the ward and attach it to the expense below....


 # if(row[8] != nil)
  wards = Ward.find_by_wardNumber(row[0])
    t = Expense.new
    t.ward = wards
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




