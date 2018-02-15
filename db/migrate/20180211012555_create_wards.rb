class CreateWards < ActiveRecord::Migration[5.1]
  def change
    create_table :wards do |t|
      t.integer :wardNumber
      t.string :name
      t.string :councilor

      t.timestamps
    end
  end
end
