class Snack < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :price
  
  belongs_to :machine

  def price_formatted
    "$%0.2f" % [price]
  end
end
