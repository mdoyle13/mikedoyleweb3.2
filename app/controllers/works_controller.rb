class WorksController < ApplicationController
  def index
    @work_items = Work.all
  end
  
  def show
    @work_item = Work.find(params[:id])
  end
  
end
