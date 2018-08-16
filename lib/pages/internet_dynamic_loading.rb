require 'capybara/dsl'

class Internet_Dynamic_Loading

  include Capybara::DSL

#Constant Variables
   PROGRESS_BAR_DIV = '#loading'
   START_BUTTON_TEXT = 'Start'
   HELLO_WORLD_TEXT = 'Hello World!'

   def click_example_two
     click_link('Example 2: Element rendered after the fact')
   end

   def click_start_button
     click_button(START_BUTTON_TEXT)
   end

   def verify_loading_div
     has_content?(PROGRESS_BAR_DIV)
   end

   def verify_hello_world
     counter = 0

     if has_content?(HELLO_WORLD_TEXT) == false && counter < 5
       sleep 2
       counter += 1
     elsif has_content?(HELLO_WORLD_TEXT) == true
       true
     end
   end

end
