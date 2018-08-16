require 'capybara/dsl'

class Internet_Challenging_Dom

  include Capybara::DSL

#Constant Variables
RED_BUTTON_CLASS = '.alert'

def click_red_button
  find(RED_BUTTON_CLASS).click
end

def read_button_text
  find(RED_BUTTON_CLASS).text
end

def check_button_label_change(array) #array that compares the label of the button to see if it changes
    if array.last != array[-2]
      true
    else
      false
    end
  end





end
