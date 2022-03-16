class RemoveTitleImageFromSpices < ActiveRecord::Migration[6.1]
  def change
    remove_column :spices, :titleimage, :string
  end
end
