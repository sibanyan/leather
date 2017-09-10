class Admin::ArticlesController < ApplicationController

  def create
    @section = Section.find(params[:section_id])
    @article = @section.articles.build(create_params)
    # raise
    if @article.save
      redirect_to admin_section_path(@section), notice: I18n.t("admin.articles.create.notices.success") 
      #redirect_toはGETで行われる（POSTなどは無理）
    else
      pp @article.errors
      # テンプレートを返す
      render :new
    end
  end

  def new
    @section = Section.find(params[:section_id])
    @article = @section.articles.build
  end

  def edit
  end

  def show
  end

  def update
  end

private
  def create_params
    # section"=>{"title"
    params.require(:article).permit(:title, :keyword)
  end

end
