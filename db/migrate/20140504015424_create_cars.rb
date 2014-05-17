class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.date :rentaldates
      t.integer :price
      t.string :location
      t.boolean :auto_transmission
      t.integer :mileage
      t.string :color
      t.text :remarks

      t.timestamps
    end
  end
end
