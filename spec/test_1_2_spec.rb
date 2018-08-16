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

#First iteration, takes current label of button and adds to the array
      button_label = @internet_site.internet_challenging_dom.read_button_text
      array.push button_label
      @internet_site.internet_challenging_dom.click_red_button
      @internet_site.helper_methods.wait(3)

#Second iteration, takes the label and compares to the label to the previous click
      button_label = @internet_site.internet_challenging_dom.read_button_text
      array.push button_label
      expect(@internet_site.internet_challenging_dom.check_button_label_change(arr)).to eq true
      @internet_site.internet_challenging_dom.click_red_button
      @internet_site.help_methods.wait(3)

#Third iteration
      button_label = @internet_site.internet_challenging_dom.read_button_text
      array.push button_label
      expect(@internet_site.internet_challenging_dom.check_button_label_change(arr)).to eq true
      @internet_site.internet_challenging_dom.click_red_button
      @internet_site.help_methods.wait(3)

#Fourth iteration
      button_label = @internet_site.internet_challenging_dom.read_button_text
      array.push button_label
      expect(@internet_site.internet_challenging_dom.check_button_label_change(arr)).to eq true
      @internet_site.internet_challenging_dom.click_red_button
      @internet_site.help_methods.wait(3)
    end

    context "running the second test" do

    it "should take me to the Dynamic Loading page and then the Example 2 page" do
      @internet_site.internet_homepage.visit_home
      @internet_site.internet_homepage.click_dynamic_loading
      expect(@internet_site.help_methods.check_page_content('Dynamically Loaded Page Elements')).to eq true
      @internet_site.internet_dynamic_loading.click_example_two
      expect(@internet_site.help_methods.check_page_content('Example 2: Element rendered after the fact')).to eq true
      @internet_site.help_methods.wait(1)
    end

    it "should confirm 'Hello World!' is rendered after the loading bar disappears" do
      @internet_site.internet_dynamic_loading.click_start_button
      expect(@internet_site.internet_dynamic_loading.verify_hello_world).to eq true
      expect(@internet_site.internet_dynamic_loading.verify_loading_div).to eq false
      @internet_site.help_methods.wait(2)
    end

  end



  end
