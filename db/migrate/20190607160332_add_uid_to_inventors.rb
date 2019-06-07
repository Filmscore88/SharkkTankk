class AddUidToInventors < ActiveRecord::Migration[5.2]
  def change
    add_column :inventors, :uid, :integer 
  end
end
