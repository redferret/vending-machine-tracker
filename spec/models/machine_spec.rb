require 'rails_helper'

RSpec.describe Machine, type: :model do
  describe 'validations' do
    it { should validate_presence_of :location }
    it { should belong_to :owner }
    it { should have_many :snacks }
  end

  describe 'instance method,' do
    describe '#average_price' do
      it 'returns a formatted average of all snack prices' do
        owner = FactoryBot.create(:owner)
        machine = FactoryBot.create(:machine, owner: owner)
        FactoryBot.create(:snack, machine: machine, price: 2)
        FactoryBot.create(:snack, machine: machine, price: 6)
        FactoryBot.create(:snack, machine: machine, price: 1)

        expect(machine.average_price).to eq "$3.00"
      end
    end
  end
end
