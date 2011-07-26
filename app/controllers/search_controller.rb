class SearchController < ApplicationController
  def index
  end

    def results
    @author = params[:author]

    @recipes = Array.new

    unless params[:dish].empty?
      Dish.where("name= ?", params[:dish]).each do |c|
        Recipe.where("dish_id=?", c.id).each do |r|
          @recipes.push(r)
        end
      end
    end

    unless params[:name].empty?
      Recipe.where("name= ?", params[:name]).each do |r|
        @recipes.push(r)
      end
    end

  end

end
