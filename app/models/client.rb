class Client < ActiveRecord::Base
  include RailsPanel::ActiveRecordInspector
  has_many :rentals
  has_many :cars, :through => :rentals
end
