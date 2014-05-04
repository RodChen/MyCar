class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :car_id
      t.integer :ratings
      t.text :comment

      t.timestamps
    end
  end
end
