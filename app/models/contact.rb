class Contact < CassandraObject::Base
  string :name
  string :address
  string :city
  string :state
  string :postal_code
  string :phone

  validates :name, presence: true
end
