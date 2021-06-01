require 'rails_helper'

RSpec.describe 'The vending machine index page,' do
  it 'shows a list of all the venching machines' do
    owner = FactoryBot.create(:owner)
    machine_1 = FactoryBot.create(:machine, owner: owner)
    machine_2 = FactoryBot.create(:machine, owner: owner)

    visit owner_machines_path(owner)

    expect(page).to have_link(machine_1.location)
    expect(page).to have_link(machine_2.location)
  end
end