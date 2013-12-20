require 'test_helper'

describe "Landing page" do
  include Capybara::DSL

  it "have the proper body text" do
    visit "/"

    page.must_have_content "Hello World!"
  end
end