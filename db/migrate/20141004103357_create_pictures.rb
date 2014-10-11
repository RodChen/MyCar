class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :car, index: true
      t.string :title

      t.timestamps
    end
  end
end
