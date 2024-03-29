require 'rails_helper'

RSpec.describe 'Offers', type: :feature do
  let(:user) { FactoryBot.create(:user, birthdate: Time.zone.today - 33.years, gender: 'Male') } # 33 yr old male

  before do
    sign_in user
  end

  it 'displays offers targeted for the user' do
    create(:offer, start_age: 20, end_age: 23, gender: 'For 20-23 yr old Female') 
    create(:offer, start_age: 30, end_age: 35, gender: 'Male', description: 'For 30-35 yr old Male')

    visit offers_path

    data_offers = find('#root')['data-offers']
    offers = JSON.parse(data_offers)

    expect(offers).to be_an(Array)
    expect(offers.first['description']).to eq('For 30-35 yr old Male')
  end
end
