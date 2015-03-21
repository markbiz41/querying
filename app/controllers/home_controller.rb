class HomeController < ApplicationController
  def index

    # Section 1.1
    # Returns clients with id 1 and 2
    clients = Client.find( [1, 2] )

    # Section 2
    # Returns clients orders count with 2
    clients = Client.where("orders_count = ?", 2)

    # Section 3
    # Return all clients by ordering by date created attribute
    clients = Client.order(:created_at)

    # Section 4
    # Return all clients with only first name and id fields
    clients = Client.select("first_name, id")

    # Section 5
    # Retrun only first 5 clients
    clients = Client.limit(5)


  end
end
