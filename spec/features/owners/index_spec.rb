require 'rails_helper'

RSpec.describe 'The owner index page,' do
  it 'shows the list of owners' do
    owner_1 = FactoryBot.create(:owner)
    owner_2 = FactoryBot.create(:owner)

    visit owners_path

    expect(page).to have_content(owner_1.name)
    expect(page).to have_content(owner_2.name)
  end
end