require 'spec_helper'
require 'google/web/helper/landing'

google = Google.new

feature 'Search Muramasa', type: :acceptance, sauce: ENV['USESAUCE'] do
  before do
    visit('http://www.google.com')
  end

  scenario 'Search' do
    google.landing_page.enter_search_text('Muramasa')
    google.landing_page.click_search
    google.landing_page.click_wikipedia_Link
    birth_date = google.landing_page.get_birthdate
    puts "Hello world"
    puts "#{birth_date}"
  end
end
