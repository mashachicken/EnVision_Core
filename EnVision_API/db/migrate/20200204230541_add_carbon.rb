class AddCarbon < ActiveRecord::Migration[5.2]
  def change
    add_column :diets, :carbon, :integer
  end
end
