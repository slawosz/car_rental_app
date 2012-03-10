class Client < ActiveRecord::Base
  has_many :rentals
  has_many :cars, :through => :rentals
end
