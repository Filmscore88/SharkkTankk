class CreateInventions < ActiveRecord::Migration[5.2]
  def change
    create_table :inventions do |t|
      t.string :name
      t.integer :inventor_id
      t.integer :investor_id
      t.timestamps null: false
    end
  end
end
