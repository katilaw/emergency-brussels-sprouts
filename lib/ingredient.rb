class Ingredient
  attr_reader :name, :weight, :create_from_grams
  def initialize(name,weight)
    @name = name
    @weight = weight
  end

def self.create_from_grams(name,weight)
  result = ('%g' % (weight/1000)).to_f
  Ingredient.new(name,result)
end
end
