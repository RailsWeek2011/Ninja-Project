module RecipesHelper
  def unit_to_i unit
      units = {"" => 0, "Stueck" => 1, "kg" => 2, "gr" => 3, "Liter" => 4, "ml" => 5}
      units[unit].to_i
    end
end
