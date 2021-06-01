require 'rails_helper'

RSpec.describe 'The owner index page,' do
  it 'shows the list of owners' do
    FactoryBot.create

    visit owners_path

    expect(page).to have_content("Sam's Snacks")
    expect(page).to have_content("Drew's Drinks")
  end
end