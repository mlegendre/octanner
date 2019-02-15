require 'spec_helper'
require 'octanner/web/utilities'
require 'google/web/google'
require 'google/web/helper/landing'

google = Google.new

feature 'Search Muramasa' do
  before do
    visit("http://www.google.com")
  end

  scenario 'Landing_Page' do
    google.landing_page.verify_text('Google')
  end
end
