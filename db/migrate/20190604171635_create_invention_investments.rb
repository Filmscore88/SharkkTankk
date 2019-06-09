class CreateInventionInvestments < ActiveRecord::Migration[5.2]
  def change
    create_table :invention_investments do |t|
      t.string :amount
      t.integer :investor_id
      t.integer :invention_id

    end
  end
end
