class DeleteColumnInInventions < ActiveRecord::Migration[5.2]
  def change
    remove_column :inventions, :investor_id, :integer
  end
end
