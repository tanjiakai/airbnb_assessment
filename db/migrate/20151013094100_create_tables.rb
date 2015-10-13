require_relative '../../config/database'

class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :username, null: false
      t.string :password, null: false
    end

    create_table :properties do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :price, null: false
    end

    create_table :reviews do |t|
      t.string :description, null: false
      t.belongs_to :property, index: true
      t.belongs_to :user, index: true
    end

    create_table :bookings do |t|
      t.date :date, null: false
      t.belongs_to :user, index: true
      t.belongs_to :property, index: true
    end
  end
end