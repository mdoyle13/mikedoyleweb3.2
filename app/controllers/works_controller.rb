class WorksController < ApplicationController
  def index
    @work_items = Work.all
  end
  
  def show
  end
  
end
