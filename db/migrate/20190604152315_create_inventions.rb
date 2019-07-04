class CreateInventions < ActiveRecord::Migration[5.2]
  def change
    create_table :inventions do |t|
      t.string :name
      t.integer :user_id
      t.string :description
    end
  end
end
