require 'test_helper'

describe "Landing page" do
  include Capybara::DSL

  it "displays the restaurant name in the browser window" do
    visit "/"

    page.must_have_css 'html head title', visible: false
  end
end