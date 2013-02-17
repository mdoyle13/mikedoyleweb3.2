class WorksController < ApplicationController
  def index
    if params[:tag]
      @work_items = Work.tagged_with(params[:tag])
    else  
      @work_items = Work.all
    end
  end
  
  def show
    @work_item = Work.find(params[:id])
  end
  
end
