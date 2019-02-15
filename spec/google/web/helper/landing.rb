require 'spec_helper'

class GoogleLandingPage
  include Capybara::DSL
  include RSpec::Matchers
  
  def enter_search_text(search_text)
    fill_in('q', with: search_text) 
  end

  def click_search
    click_on('Google Search') 
  end

  def verify_text(text)
    true_text = false
    found_text = find('#hplogo')
    if(found_text = text)
      true_text = true
    end
    true_text
  end

  def click_wikipedia_Link
    click_on('Muramasa - Wikipedia')
  end

  def get_birthdate
    birth_date = find(:p, "div#mw-content-text p:first-of-type").value
    #birth_date = find('p', text: '1501').value
    puts "#{birth_date} - or not"
    birth_date
  end
end
