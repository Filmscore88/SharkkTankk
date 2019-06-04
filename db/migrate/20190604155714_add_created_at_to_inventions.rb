class AddCreatedAtToInventions < ActiveRecord::Migration[5.2]
  def change
    add_column :inventions, :created_at, :datetime
  end
end
