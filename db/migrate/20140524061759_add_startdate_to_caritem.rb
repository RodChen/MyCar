class AddStartdateToCaritem < ActiveRecord::Migration
  def change
    add_column :car_items, :startdate, :date
    add_column :car_items, :enddate, :date
  end
end
