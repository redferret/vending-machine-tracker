require 'rails_helper'

RSpec.describe Snack, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :price }
    it { should belong_to :machine }
  end

  describe 'instance method,' do
    describe '#price_formatted' do
      it 'returns the price of the snack formatted' do
        owner = FactoryBot.create(:owner)
        machine = FactoryBot.create(:machine, owner: owner)
        snack = FactoryBot.create(:snack, machine: machine, price: 2.1)

        expect(snack.price_formatted).to eq '$2.10'
      end
    end
  end
end
