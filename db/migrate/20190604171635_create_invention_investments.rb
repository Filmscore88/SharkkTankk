class CreateInventionInvestments < ActiveRecord::Migration[5.2]
  def change
    create_table :invention_investments do |t|
      t.integer :amount
      t.integer :user_id
      t.integer :invention_id

    end
  end
end
