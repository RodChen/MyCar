class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|

      t.timestamps
    end
  end
end
