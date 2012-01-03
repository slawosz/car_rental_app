class CarType < ActiveRecord::Base
  include RailsPanel::ActiveRecordInspector
  has_many :cars

  validates :name, :presence => :true
end
