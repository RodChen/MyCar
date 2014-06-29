class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.text :description
      t.integer :car_id

      t.timestamps
    end
  end
end
