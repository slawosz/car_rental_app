class Equipment < ActiveRecord::Base
  include RailsPanel::ActiveRecordInspector
  has_and_belongs_to_many :cars
end
