
class Property < ActiveRecord::Base
  has_many :bookings
  has_many :users, :through => :bookings
  has_many :reviews
  belongs_to :user
end