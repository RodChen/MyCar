class AddAvatarToCars < ActiveRecord::Migration
  def self.up
    add_attachment :cars, :avatar
  end

  def self.down
    remove_attachment :cars, :avatar
  end
end