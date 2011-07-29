module IngredientCategoriesHelper
  def getIngredientCategory ingredient
    ic = ingredient.ingredient_category

    hierarchy = [ic.name]

    while ic.parent
      hierarchy.insert(0, (link_to ic.parent.name, ingredient_category_path(ic.parent)))
      ic = ic.parent
    end

    hierarchy
  end

  def getCategoryParent category

    hierarchy = [category.name]
    if category.parent
      cp = category.parent

      hierarchy = [(link_to cp.name, ingredient_category_path(cp.parent))]

      while cp.parent
        hierarchy.insert(0, (link_to cp.parent.name, ingredient_category_path(cp.parent)))
        cp = cp.parent
      end
    end
    hierarchy
  end
end
