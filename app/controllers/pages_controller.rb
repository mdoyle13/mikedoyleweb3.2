class PagesController < ApplicationController
  def home
    @featured_work = Work.all(:limit => 3)
  end
  
  def about
    
  end
  
end
