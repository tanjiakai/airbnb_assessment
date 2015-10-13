require_relative '../config/database'

user = User.create(name: 'admin', username: 'admin', password: 'admin')
Property.create(title: 'Room for rent in KL', description: 'Cheap room for rent', price: 150, user: user)
Property.create(title: 'Room for rent in Bangsar', description: 'Cheap room for rent', price: 200, user: user)