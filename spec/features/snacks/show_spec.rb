require 'rails_helper'

RSpec.describe 'Show page for a snack,' do
  it 'shows the price and name of the snack'

  describe 'vending machine list,' do
    before :all do
      @owner = FactoryBot.create(:owner)
      @machine_1 = FactoryBot.create(:machine, owner: @owner)
      @machine_2 = FactoryBot.create(:machine, owner: @owner)
      FactoryBot.create(:snack, machine: @machine_1)
      FactoryBot.create(:snack, machine: @machine_1)
      FactoryBot.create(:snack, machine: @machine_2)
      FactoryBot.create(:snack, machine: @machine_2)
    end

    it 'shows a list of vending machines the snack is sold at'
    it 'shows vending machines with an average price next to it'
    it 'shows a count of different items at the vending machine'
  end
end