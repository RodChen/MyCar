class CreateCarItems < ActiveRecord::Migration
  def change
    create_table :car_items do |t|
      t.references :car, index: true
      t.belongs_to :lease, index: true

      t.timestamps
    end
  end
end
