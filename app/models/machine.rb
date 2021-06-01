class Machine < ApplicationRecord
  validates_presence_of :location
  
  has_many :snacks
  belongs_to :owner

  def average_price
    avg = snacks.average(:price)
    "$%0.2f" % [avg.nil?? 0 : avg]
  end

  def snack_count
    snacks.count
  end
end
