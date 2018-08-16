require 'spec_helper'

describe "Testing two examples from the-internet web app - Test Tasks 1 and 2" do

  before(:all) do
    @internet_site = Internet_Site.new
  end

  context "running the first test" do

    it "should take me to the Challenging DOM page" do
      @internet_site.internet_homepage.visit_home
      @internet_site.internet_homepage.click_challenging_dom
      expect(@internet_site.help_methods.check_page_content('Challenging DOM')).to eq true
      @internet_site.help_methods.wait(1)
    end

    it "should verify that the button label changes when clicked" do
      array = []

      button_label = @internet_site.internet_challenging_dom.read_button_text
      # add current button text to array for comparison
      array.push button_label
      @internet_site.internet_challenging_dom.click_red_button
      @internet_site.helper_methods.wait(3)

      # overwrite previous button text with current
      button_label = @internet_site.internet_challenging_dom.read_button_text
      # add current button text to array for comparison
      array.push button_label
      # now compare current and previous button text array items, if the text is different then the method will return true
      expect(@internet_site.internet_challenging_dom.check_button_label_change(arr)).to eq true
      @internet_site.internet_challenging_dom.click_red_button
      @internet_site.help_methods.wait(3)

      button_label = @internet_site.internet_challenging_dom.read_button_text
      array.push button_label
      expect(@internet_site.internet_challenging_dom.check_button_label_change(arr)).to eq true
      @internet_site.internet_challenging_dom.click_red_button
      @internet_site.help_methods.wait(3)

      button_label = @internet_site.internet_challenging_dom.read_button_text
      array.push button_label
      expect(@internet_site.internet_challenging_dom.check_button_label_change(arr)).to eq true
      @internet_site.internet_challenging_dom.click_red_button
      @internet_site.help_methods.wait(3)
    end

    

  end
