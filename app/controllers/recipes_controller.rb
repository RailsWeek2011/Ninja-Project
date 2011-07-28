class RecipesController < ApplicationController
  # GET /recipes
  # GET /recipes.json
  #def index
  #  @recipes = Recipe.all
  #
  #  respond_to do |format|
  #    format.html # index.html.erb
  #    format.json { render json: @recipes }
  #  end
  #end

  # GET /recipes/1
  # GET /recipes/1.json
  #def show
  #  @recipes = Recipe.where("dish_id=?",params[:dish_id])
  #    respond_to do |format|
  #      format.html #  recipe_in_categorie.html.erb
  #      format.json { render json: @recipes }
  #  end
  #end

  # GET /recipes/new
  # GET /recipes/new.json
  def new
    @recipe = Recipe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipe }
    end
  end

  # GET /recipes/1/edit
  def edit
    @recipe = Recipe.find(params[:id])
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(params[:recipe])
    ingredients = params[:needed_ingredient][:ingredient]
    quantity = params[:needed_ingredient][:quantity]
    unit = params[:needed_ingredient][:unit]
    i=0

    ingredients.each_value do |value|

      @needed_ingredient = NeededIngredient.new :ingredient => Ingredient.find(value),
                                                :quantity => quantity[i.to_s],
                                                :unit => i_to_unit(unit[i.to_s]),
                                                :recipe => @recipe
      unless @needed_ingredient.save
        flash[:alert] = "Zutat speichern fehler bla"
      end
      i = i + 1
    end

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to dish_path(@recipe.dish), notice: 'Recipe was successfully created.' }
        format.json { render json: @recipe, status: :created, location: @recipe }
      else
        format.html { render action: "new" }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipes/1
  # PUT /recipes/1.json
  def update
    @recipe = Recipe.find(params[:id])

    ingredients = params[:needed_ingredient][:ingredient]
    quantity = params[:needed_ingredient][:quantity]
    unit = params[:needed_ingredient][:unit]
    i=0

    @recipe.needed_ingredients.each do |ni| ni.destroy end

    ingredients.each_value do |value|
      @needed_ingredient = NeededIngredient.new :ingredient => Ingredient.find(value),
                                                :quantity => quantity[i.to_s],
                                                :unit => i_to_unit(unit[i.to_s]),
                                                :recipe => @recipe
      unless @needed_ingredient.save
        flash[:alert] = "Zutat speichern fehler bla"
      end
      i = i + 1
    end

    respond_to do |format|
      if @recipe.update_attributes(params[:recipe])
        format.html { redirect_to dish_path(@recipe.dish), notice: 'Recipe was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe = Recipe.find(params[:id])
    dish = @recipe.dish
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to dish_path(dish) }
      format.json { head :ok }
    end
  end

  protected
    def i_to_unit i
      units = {"" => 0, "Stueck" => 1, "kg" => 2, "gr" => 3, "Liter" => 4, "ml" => 5}
      units.keys[i.to_i]
    end
end
