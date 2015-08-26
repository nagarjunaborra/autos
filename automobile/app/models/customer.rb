class Customer < ActiveRecord::Base
has_many :vehicles
validates :email, :phone, uniqueness: true
validates :name, :email, :phone, presence: true
validates :phone, format: {with: /\d{3}-\d{3}-\d{4}/}
validates :email, format: {with: /\w+@\w+\.\w+/}

end
