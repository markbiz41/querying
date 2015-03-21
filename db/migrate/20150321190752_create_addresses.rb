class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :client
      t.string :postal_code

      t.timestamps null: false
    end
  end
end
