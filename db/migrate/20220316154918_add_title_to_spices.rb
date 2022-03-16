class AddTitleToSpices < ActiveRecord::Migration[6.1]
  def change
    add_column :spices, :title, :string
  end
end
