class TagsController < ApplicationController
  def new
    @tag = Tag.new
    render :new
  end

  def create
    @tag = Tag.new(params[:tag])
    if @tag.save
      flash[:notice] = "The tag was added to the recipe."
      redirect_to("/recipes/#{@tag.recipe_id}")
    else
      render :new
    end
  end

  def show
    @tag = Tag.find_by(name: params[:name])
    render :show
  end
end
