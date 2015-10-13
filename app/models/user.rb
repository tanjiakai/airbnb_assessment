
class User < ActiveRecord::Base
  has_many :bookings
  has_many :properties, :through => :bookings
  has_many :reviews

  def self.exist?(username)
    User.find_by(username: username)
  end

  def self.authenticate?(username, password)
    user = User.find_by(username: username)
    user.password == password
  end
end