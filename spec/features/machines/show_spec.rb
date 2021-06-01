require 'rails_helper'

RSpec.describe 'The vending machine show page,' do
  it 'shows the location of that machine' do
    owner = FactoryBot.create(:owner)
    machine_1 = FactoryBot.create(:machine, owner: owner)

    visit machine_path(machine_1)

    expect(page).to have_content("#{machine_1.location} Vending Machine")
  end

  it 'shows a list of all the snacks with their names and prices' do
    owner = FactoryBot.create(:owner)
    machine_1 = FactoryBot.create(:machine, owner: owner)
    snack_1 = FactoryBot.create(:snack, machine: machine_1)
    snack_2 = FactoryBot.create(:snack, machine: machine_1)

    visit machine_path(machine_1)

    within '#snack-list' do
      expect(page).to have_content(snack_1.name)
      expect(page).to have_content(snack_2.name)

      expect(page).to have_content("$#{snack_1.price}")
      expect(page).to have_content("$#{snack_2.price}")
    end

    within '#info-list' do
      expect(page).to have_content(machine_1.average_price)
    end
  end
end