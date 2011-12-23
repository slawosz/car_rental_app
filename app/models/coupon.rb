class Coupon < ActiveRecord::Base
  include RailsPanel::ActiveRecordInspector
  belongs_to :rental
end
