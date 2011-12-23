class Rental < ActiveRecord::Base
  include RailsPanel::ActiveRecordInspector
  belongs_to :client
  belongs_to :car
  has_one :coupon
end
