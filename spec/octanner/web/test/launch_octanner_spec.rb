require 'spec_helper'
octanner = Octanner.new

feature 'Launch OC Tanner Website', type: :acceptance, sauce: ENV['USESAUCE'] do
  before do
    visit("http://octanner.com")
  end

  scenario 'open menu' do
    octanner.landing_page.open_menu
  end

  scenario 'check copyright' do
    octanner.landing_page.check_copyright
  end

  scenario 'checking your drawers' do
    octanner.landing_page.check_drawer_functionality
  end
end
