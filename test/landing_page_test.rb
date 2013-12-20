require 'test_helper'

describe "Landing page" do
  include Capybara::DSL

  it "displays the restaurant name in the browser window" do
    visit "/"

    page.must_have_css 'html head title', visible: false
  end

  it "displays the restaurant name in the header of the page" do
    visit "/"

    header = page.find('html body header')
    header.text.wont_equal ''
  end
end