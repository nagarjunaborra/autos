class Vehicle < ActiveRecord::Base
belongs_to :customer
validates :make, :model, presence: true
end
