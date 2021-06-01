require 'rails_helper'

RSpec.describe Owner, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should have_many :machines }
  end

  describe 'instance method,' do
    describe '#machine_count' do
      it 'returns the number of machines the owner has' do
        owner = FactoryBot.create(:owner)
        FactoryBot.create(:machine, owner: owner)
        FactoryBot.create(:machine, owner: owner)

        expect(owner.machine_count).to eq 2
      end
    end
  end
end
