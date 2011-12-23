module RentalsHelper

  def form_attributes_keys
    super - [:daily_fee]
  end

  def show_attributes
    hash = {:total_cost => {:display => :simple}}
    super.merge(hash)
  end

  def show_attributes_keys
    super + [:total_cost]
  end
end
