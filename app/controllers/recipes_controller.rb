class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all.order('stars').reverse
    render :index
  end

  def new
    @recipe = Recipe.new
    render :new
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    if @recipe.save
      flash[:notice] = "The recipe was added to the cookbook."
      redirect_to("/recipes/#{@recipe.id}")
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render :edit
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(params[:recipe])
      flash[:notice] = "The recipe was updated in the cookbook."
      redirect_to("/recipes/#{@recipe.id}")
    else
      render :edit
    end
  end

  def destroy
    @recipe_to_delete = Recipe.find(params[:id])
    @recipe_to_delete.destroy
    flash[:notice] = "The recipe was deleted from the cookbook."
    redirect_to("/")
  end

  def show
    @recipe = Recipe.find(params[:id])
    render :show
  end

  def search
   @recipes = Recipe.basic_search(params[:ingredient])
   render :results
  end

end
