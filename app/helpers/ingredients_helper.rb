module IngredientsHelper
  def getCategory ingredient
    ic = ingredient.ingredient_category

    hierarchy = [(link_to ic.name, ingredient_category_path(ic))]

    while ic.parent
      hierarchy.insert(0, (link_to ic.parent.name, ingredient_category_path(ic.parent)))
      ic = ic.parent
    end

    hierarchy
  end
end
