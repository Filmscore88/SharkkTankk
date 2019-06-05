class CreateInventors < ActiveRecord::Migration[5.2]
  def change
    create_table :inventors do |t|
      t.string :user_name
      t.string :password_digest
      t.string :email
      t.string :demo_link

      t.timestamps null: false
    end
  end
end
