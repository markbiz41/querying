class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.integer :orders_count
      t.timestamps null: false
    end
  end
end
