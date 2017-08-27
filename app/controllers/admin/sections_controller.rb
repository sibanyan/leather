class Admin::SectionsController < ApplicationController

  def index
    @sections = Section.all
  end

  def create
    @section = Section.new create_params
    # raise
    if @section.save
      redirect_to action: :index
      #redirect_toはGETで行われる（POSTなどは無理）
    else
      pp @section.errors
      # テンプレートを返す
      render :new
    end
  end

  def new
    @section = Section.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  def create_params
    # section"=>{"title"
    params.require(:section).permit(:title)
  end
end
