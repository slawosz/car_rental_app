class Car < ActiveRecord::Base
  include RailsPanel::ActiveRecordInspector
  has_and_belongs_to_many :equipment
  belongs_to :car_type
  has_many :clients, :through => :rentals
  has_many :rentals
end
