class NeededIngredientsController < ApplicationController
  # GET /needed_ingredients
  # GET /needed_ingredients.json
  def index
    @needed_ingredients = NeededIngredient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @needed_ingredients }
    end
  end

  # GET /needed_ingredients/1
  # GET /needed_ingredients/1.json
  def show
    @needed_ingredient = NeededIngredient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @needed_ingredient }
    end
  end

  # GET /needed_ingredients/new
  # GET /needed_ingredients/new.json
  def new
    @needed_ingredient = NeededIngredient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @needed_ingredient }
    end
  end

  # GET /needed_ingredients/1/edit
  def edit
    @needed_ingredient = NeededIngredient.find(params[:id])
  end

  # POST /needed_ingredients
  # POST /needed_ingredients.json
  def create
    @needed_ingredient = NeededIngredient.new(params[:needed_ingredient])

    respond_to do |format|
      if @needed_ingredient.save
        format.html { redirect_to @needed_ingredient, notice: 'Needed ingredient was successfully created.' }
        format.json { render json: @needed_ingredient, status: :created, location: @needed_ingredient }
      else
        format.html { render action: "new" }
        format.json { render json: @needed_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /needed_ingredients/1
  # PUT /needed_ingredients/1.json
  def update
    @needed_ingredient = NeededIngredient.find(params[:id])

    respond_to do |format|
      if @needed_ingredient.update_attributes(params[:needed_ingredient])
        format.html { redirect_to @needed_ingredient, notice: 'Needed ingredient was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @needed_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /needed_ingredients/1
  # DELETE /needed_ingredients/1.json
  def destroy
    @needed_ingredient = NeededIngredient.find(params[:id])
    @needed_ingredient.destroy

    respond_to do |format|
      format.html { redirect_to needed_ingredients_url }
      format.json { head :ok }
    end
  end
end
