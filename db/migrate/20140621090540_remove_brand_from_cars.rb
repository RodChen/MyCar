class RemoveBrandFromCars < ActiveRecord::Migration
  def change
    remove_column :cars, :brand
  end
end
