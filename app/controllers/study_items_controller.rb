class StudyItemsController < ApplicationController
  before_action :set_study_item, only: %i[show edit update destroy mark_as_done]
  def index
    @study_items = StudyItem.all
  end
  
  def show; end

  def new
    @study_item = StudyItem.new
  end

  def create
    @study_item = StudyItem.new(study_item_params)
    if @study_item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @study_item.update(study_item_params)
      redirect_to @study_item
    else
      render :edit
    end
  end

  def destroy
    @study_item.destroy
    redirect_to root_path
  end

  def mark_as_done
    @study_item.update(finalized_at: Time.current)
    redirect_to @study_item
  end

  private
  def set_study_item
    @study_item = StudyItem.find(params[:id])
  end

  def study_item_params
    params.require(:study_item).permit(:title, :category, :description)
  end
end