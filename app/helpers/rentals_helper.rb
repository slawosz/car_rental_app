module RentalsHelper

  # dont render field for daily_fee which is set by after_save model callback
  def form_attributes_keys
    super - [:daily_fee]
  end

  # add attribute which represents model instance methods
  def show_attributes
    hash = {:total_cost => {:display => :simple}}
    super.merge(hash)
  end

  # this method returs array which keys to attributes in show action
  def show_attributes_keys
    super + [:total_cost]
  end
end
