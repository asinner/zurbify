require 'test_helper'

feature 'Shopper visits homepage' do
  scenario 'they see a list of products' do
    visit root_path
    page.text.must_include products(:iphone3).name
    page.text.must_include products(:iphone4).name
    page.text.must_include products(:iphone5).name
    page.text.must_include products(:iphone6).name
  end
end
