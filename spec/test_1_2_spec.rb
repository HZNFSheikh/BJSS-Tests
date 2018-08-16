require 'spec_helper'

describe "Testing two examples from the-internet web app - Test Tasks 1 and 2" do

  before(:all) do
    @internet_site = Internet_Site.new
  end

  context "running the first test" do

    it "should take me to the Challenging DOM page" do
      @internet_site.the_internet_homepage.visit_home
      @internet_site.the_internet_homepage.click_challenging_dom
      expect(@internet_site.helper_methods.check_page_content('Challenging DOM')).to eq true
      @internet_site.helper_methods.wait(1)
    end

    it "should confirm that the red button label changes when clicked" do
      # I performed 4 iterations
      arr = []

      # store current button text in a varibale
      button_text = @internet_site.the_internet_challenging_dom.get_button_text
      # add current button text to array for comparison
      arr.push button_text
      @internet_site.the_internet_challenging_dom.click_red_button
      @internet_site.helper_methods.wait(3)

      # overwrite previous button text with current
      button_text = @internet_site.the_internet_challenging_dom.get_button_text
      # add current button text to array for comparison
      arr.push button_text
      # now compare current and previous button text array items, if the text is different then the method will return true
      expect(@internet_site.the_internet_challenging_dom.check_button_label_change(arr)).to eq true
      @internet_site.the_internet_challenging_dom.click_red_button
      @internet_site.helper_methods.wait(3)

      button_text = @internet_site.the_internet_challenging_dom.get_button_text
      arr.push button_text
      expect(@internet_site.the_internet_challenging_dom.check_button_label_change(arr)).to eq true
      @internet_site.the_internet_challenging_dom.click_red_button
      @internet_site.helper_methods.wait(3)

      button_text = @internet_site.the_internet_challenging_dom.get_button_text
      arr.push button_text
      expect(@internet_site.the_internet_challenging_dom.check_button_label_change(arr)).to eq true
      @internet_site.the_internet_challenging_dom.click_red_button
      @internet_site.helper_methods.wait(3)
    end

  end
