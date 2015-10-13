
class Property < ActiveRecord::Base
  has_many :bookings, dependent: :destroy
  has_many :users, :through => :bookings
  has_many :reviews, dependent: :destroy
  belongs_to :user
end