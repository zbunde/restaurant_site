require 'test_helper'

describe "Landing page" do
  include Capybara::DSL

  before do
    visit "/"
  end

  it "displays the restaurant name in the browser title" do
    skip
    page.must_have_css 'html head title', visible: false
  end

  it "displays the restaurant name in the header of the page" do
    skip
    header = page.find('html body header')
    header.text.wont_equal ''
  end

  it "displays two paragraphs of welcome text" do
    skip
    welcome_text = page.all('html body main p')
    welcome_text.length.must_equal 2

    welcome_text.each do |element|
      element.text.wont_equal ''
    end
  end

  it "displays a list of names for 5 dishes" do
    skip
    dishes = page.all('html body main ul li')
    dishes.length.must_equal 5

    dishes.each do |element|
      element.text.wont_equal ''
    end
  end

  it "displays the restaurant address in the footer" do
    skip
    address = page.find('html body footer address')
    address.text.wont_equal ''
  end

  it "displays a contact us email link in the footer" do
    skip
    mailto_link = page.find('html body footer a[href^=mailto]')
    mailto_link.text.wont_equal ''
  end

  it "displays the copyright in the footer" do
    skip
    footer = page.find('html body footer')
    footer.text.must_match /©/
    footer.text.must_include "2013"
  end

  it "displays an image of the restaurant" do
    skip
    image = page.find('html body main img')
    image[:src].wont_be_nil
    image[:src].must_match /images\//
  end
end
