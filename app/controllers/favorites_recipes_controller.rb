class FavoritesRecipesController < ApplicationController
  before_action :set_favorites_recipe, only: [:show, :edit, :update, :destroy]

  # GET /favorites_recipes
  # GET /favorites_recipes.json
  def index
    @favorites_recipes = FavoritesRecipe.all
  end

  # GET /favorites_recipes/1
  # GET /favorites_recipes/1.json
  def show
  end

  # GET /favorites_recipes/new
  def new
    @favorites_recipe = FavoritesRecipe.new
  end

  # GET /favorites_recipes/1/edit
  def edit
  end

  # POST /favorites_recipes
  # POST /favorites_recipes.json
  def create
    @favorites_recipe = FavoritesRecipe.new(favorites_recipe_params)

    respond_to do |format|
      if @favorites_recipe.save
        format.html { redirect_to @favorites_recipe, notice: 'Favorites recipe was successfully created.' }
        format.json { render :show, status: :created, location: @favorites_recipe }
      else
        format.html { render :new }
        format.json { render json: @favorites_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorites_recipes/1
  # PATCH/PUT /favorites_recipes/1.json
  def update
    respond_to do |format|
      if @favorites_recipe.update(favorites_recipe_params)
        format.html { redirect_to @favorites_recipe, notice: 'Favorites recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorites_recipe }
      else
        format.html { render :edit }
        format.json { render json: @favorites_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorites_recipes/1
  # DELETE /favorites_recipes/1.json
  def destroy
    @favorites_recipe.destroy
    respond_to do |format|
      format.html { redirect_to favorites_recipes_url, notice: 'Favorites recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorites_recipe
      @favorites_recipe = FavoritesRecipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorites_recipe_params
      params.require(:favorites_recipe).permit(:name, :recipe, :user_id)
    end
end
