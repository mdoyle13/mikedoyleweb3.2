class PagesController < ApplicationController
  def home
    @featured_work = Work.all(:limit => 3)
    render :layout => "homepage"
  end
  
  def about
    
  end
  
end
