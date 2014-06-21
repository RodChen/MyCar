class AddBrandRefToCars < ActiveRecord::Migration
  def change
    add_reference :cars, :brand, index: true
  end
end
