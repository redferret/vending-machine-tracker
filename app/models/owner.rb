class Owner < ApplicationRecord
  validates_presence_of :name

  has_many :machines

  def machine_count
    machines.count
  end
end
