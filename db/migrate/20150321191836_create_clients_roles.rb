class CreateClientsRoles < ActiveRecord::Migration
  def change
    create_table :clients_roles do |t|
      t.references :client, index: true
      t.references :role, index: true
    end
    add_foreign_key :clients_roles, :clients
    add_foreign_key :clients_roles, :roles
  end
end
