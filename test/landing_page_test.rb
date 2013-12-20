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

  it "displays two paragraphs of welcome text" do
    visit "/"

    welcome_text = page.all('html body p')
    welcome_text.length.must_equal 2

    welcome_text.each do |element|
      element.text.wont_equal ''
    end
  end

  it "displays a list of 5 dishes" do
    visit "/"

    definition_terms = page.all('html body dl dt')
    definition_terms.length.must_equal 5

    definition_terms.each do |element|
      element.text.wont_equal ''
    end
  end

  it "displays a description for each of 5 dishes" do
    visit "/"

    definition_descriptions = page.all('html body dl dd')
    definition_descriptions.length.must_equal 5

    definition_descriptions.each do |element|
      element.text.wont_equal ''
    end
  end
end