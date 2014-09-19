require 'test_helper'

feature 'Developer wants to use foundation' do
  scenario 'the document links the zurb stylesheet' do
    visit root_path
    # Foundation inserts modernizr. So check for the existence of that.
    page.must_have_xpath('//script[@src="/assets/vendor/modernizr.js"]')
  end
end
