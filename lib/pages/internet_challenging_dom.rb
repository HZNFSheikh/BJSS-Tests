require 'capybara/dsl'

class Internet_Challenging_Dom

  include Capybara::DSL

#Constant Variables
RED_BUTTON_CLASS = '.alert'

def click_red_button
  find(RED_BUTTON_CLASS).click
end

def get_button_text
  find(RED_BUTTON_CLASS).text
end

def check_button_label_change(array)
    # if the last and second to last items do not match then return true - this means that button label changes after each click
    if array.last != array[-2]
      true
    else
      false
    end
  end





end
