class OctLandingPage
  include Capybara::DSL
  include RSpec::Matchers

  def open_menu
    puts "Hello World"
    expect(page).to have_css('div.mobile-open')
    page.find("div.mobile-open").click
  end

  def check_copyright
    expect(page).to have_selector(:css, 'a[href="https://www.octanner.com/legal.html"]')
    page.click_link('© 2018 O.C. Tanner')
    expect(page).to have_title "Legal Information & Quality Standards | O.C. Tanner"
  end

  def check_drawer_functionality
    page.driver.browser.manage.window.maximize
    page.all(:css, 'ul li.meganav-title').each do |drawer| 
      find('ul li.meganav-title').hover
    end
  end
end
