require 'capybara/dsl'

require_relative './pages/internet_site_home.rb'


class Internet_Site


  def internet_site_home
    Internet_Site_Home.new
  end

  def internet_challenging_dom
    Internet_Challenging_Dom.new
  end



end
