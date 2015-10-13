require_relative '../config/database'

User.create(name: 'admin', username: 'admin', password: 'admin')
Property.create(title: 'Room for rent in KL', description: 'Cheap room for rent', price: 150)
Property.create(title: 'Room for rent in Bangsar', description: 'Cheap room for rent', price: 200)