class AddColumnToInvention < ActiveRecord::Migration[5.2]
  def change
    add_column :inventions, :invested?, :boolean
  end
end
