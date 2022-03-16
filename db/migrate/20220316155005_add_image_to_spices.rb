class AddImageToSpices < ActiveRecord::Migration[6.1]
  def change
    add_column :spices, :image, :string
  end
end
