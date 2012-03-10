class CarType < ActiveRecord::Base
  has_many :cars

  validates :name, :presence => :true

  def self.form_attributes_keys
    super - [:cars]
  end
end
