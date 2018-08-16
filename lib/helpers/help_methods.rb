require 'capybara/dsl'

class Help_Methods
  include Capybara::DSL

  def pause(num)
    sleep num
  end


  def check_page_content(text)
    has_content?(text)
  end


end
