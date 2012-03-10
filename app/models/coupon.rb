class Coupon < ActiveRecord::Base
  belongs_to :rental

  validates_presence_of :name
end
