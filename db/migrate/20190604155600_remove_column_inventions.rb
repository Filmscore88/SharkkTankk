class RemoveColumnInventions < ActiveRecord::Migration[5.2]
  def change
    remove_column :inventions, :created_at, :datetime 
  end
end
