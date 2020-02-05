class AddFootprint < ActiveRecord::Migration[5.2]
  def change
    add_column(:users, :footprint, :string)
  end
end
