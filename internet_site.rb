require 'capybara/dsl'

require_relative './pages/internet_site_home.rb'
require_relative './pages/internet_challenging_dom.rb'
require_relative './pages/internet_dynamic_loading.rb'
require_relative './helpers/help_methods.rb'


class Internet_Site


  def internet_site_home
    Internet_Site_Home.new
  end

  def internet_challenging_dom
    Internet_Challenging_Dom.new
  end

  def internet_dynamic_loading
   Internet_Dynamic_Loading.new
 end

  def helper_methods
    Helper_Methods.new
  end



end
