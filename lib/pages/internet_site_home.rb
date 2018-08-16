require 'capybara/dsl'

class Internet_Site_Home

  include Capybara::DSL

#Constant Variables
HOME_URL = 'https://the-internet.herokuapp.com'

      def visit_home
         visit(HOME_URL)
         sleep 2
      end


      def click_challenging_dom
        click_link('Challenging DOM')
      end


      def click_dynamic_loading
        all('a').each do |tag|
          if tag.text == 'Dynamic Loading'
            tag.click
            break
          end
        end
      end


end
