require 'rails_helper'

RSpec.describe 'The vending machine show page,' do
  it 'shows the location of that machine' do
    owner = FactoryBot.create(:owner)
    machine_1 = FactoryBot.create(:machine, owner: owner)

    visit machine_path(machine_1)

    expect(page).to have_content("#{machine_1.location} Vending Machine")
  end
end