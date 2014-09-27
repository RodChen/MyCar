class AddColumnToCars < ActiveRecord::Migration
  def change
    add_column :cars, :latitude, :float
    add_column :cars, :longitude, :float
  end
end
