class AddDescriptionToInventions < ActiveRecord::Migration[5.2]
  def change
    add_column :inventions, :description, :string
  end
end
