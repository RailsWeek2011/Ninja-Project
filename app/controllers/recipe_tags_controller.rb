class RecipeTagsController < ApplicationController
  # GET /recipe_tags
  # GET /recipe_tags.json
  def index
    @recipe_tags = RecipeTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipe_tags }
    end
  end

  # GET /recipe_tags/1
  # GET /recipe_tags/1.json
  def show
    @recipe_tag = RecipeTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipe_tag }
    end
  end

  # GET /recipe_tags/new
  # GET /recipe_tags/new.json
  def new
    @recipe_tag = RecipeTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipe_tag }
    end
  end

  # GET /recipe_tags/1/edit
  def edit
    @recipe_tag = RecipeTag.find(params[:id])
  end

  # POST /recipe_tags
  # POST /recipe_tags.json
  def create
    @recipe_tag = RecipeTag.new(params[:recipe_tag])

    respond_to do |format|
      if @recipe_tag.save
        format.html { redirect_to @recipe_tag, notice: 'Recipe tag was successfully created.' }
        format.json { render json: @recipe_tag, status: :created, location: @recipe_tag }
      else
        format.html { render action: "new" }
        format.json { render json: @recipe_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipe_tags/1
  # PUT /recipe_tags/1.json
  def update
    @recipe_tag = RecipeTag.find(params[:id])

    respond_to do |format|
      if @recipe_tag.update_attributes(params[:recipe_tag])
        format.html { redirect_to @recipe_tag, notice: 'Recipe tag was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @recipe_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_tags/1
  # DELETE /recipe_tags/1.json
  def destroy
    @recipe_tag = RecipeTag.find(params[:id])
    @recipe_tag.destroy

    respond_to do |format|
      format.html { redirect_to recipe_tags_url }
      format.json { head :ok }
    end
  end
end
