class StudyItemsController < ApplicationController
  def index
    @study_items = StudyItem.all
  end
  
  def show
    @study_item = StudyItem.find(params[:id])
  end

  def new
    @study_item = StudyItem.new
  end

  def create
    @study_item = StudyItem.new(params.require(:study_item)
                                      .permit(:title, :category, :description))
    @study_item.save
    redirect_to root_path
  end
end