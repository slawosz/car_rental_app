class Coupon < ActiveRecord::Base
  include RailsPanel::ActiveRecordInspector
  belongs_to :rental

  validates_presence_of :name
end
