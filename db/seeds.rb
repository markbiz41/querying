# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  user_role = Role.create(name: 'user')
  admin_role = Role.create(name: 'admin')

5.times.each do |i|
  client = Client.create(first_name: "Client #{i+1}")


  client.roles << user_role
  client.roles << admin_role

  address = Address.create(postal_code: Faker::Address.postcode, client: client)

  5.times.each do
    order = Order.create(client: client)
  end

end
