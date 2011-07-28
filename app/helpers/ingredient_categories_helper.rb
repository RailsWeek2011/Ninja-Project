module IngredientCategoriesHelper
  def getIngredientCategory ingredient
    ic = ingredient.ingredient_category

    hierarchy = [(link_to ic.name, ingredient_category_path(ic))]

    while ic.parent
      hierarchy.insert(0, (link_to ic.parent.name, ingredient_category_path(ic.parent)))
      ic = ic.parent
    end

    hierarchy
  end

  def getCategoryParent category
    cp = category.parent

    hierarchy = [(link_to cp.name, ingredient_category_path(cp))]

    while cp.parent
      hierarchy.insert(0, (link_to cp.parent.name, ingredient_category_path(cp.parent)))
      cp = cp.parent
    end

    hierarchy
  end
end
