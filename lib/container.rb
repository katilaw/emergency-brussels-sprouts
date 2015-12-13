class Container
  attr_reader :weight, :maximum_holding_weight
 def initialize(weight,maximum_holding_weight)
   @weight = weight
   @maximum_holding_weight = maximum_holding_weight
   @ingredients = []
 end

 def ingredients
   @ingredients
 end

 def ingredients=(ingredient)
   @ingredients << ingredient
 end

 def fill_with_ingredient(ingredient)
   cycles = (@maximum_holding_weight/ingredient.weight).to_i
    cycles.times do
      @ingredients << ingredient
    end
    @weight = (@weight + @maximum_holding_weight)
 end

 def which_ingredient
   @ingredients[0].name
 end

 def how_many_ingredients
    @ingredients.count
  end

 def remove_one_ingredient
   @ingredients.pop
   @ingredients.count
 end

 def empty
   @ingredients.empty?
 end

 def weight
   @weight
 end
end
