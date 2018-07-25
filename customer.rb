class Customer

  attr_reader :name, :wallet, :age, :drunkeness


  def initialize(name, wallet, age, drunkeness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkeness = drunkeness
  end

  def buy_drink(drink)
    @wallet -= drink.price
    @drunkeness += drink.alcohol_level
  end

  def legal()
    return @age >= 18
  end

  def eat_food(food)
    @drunkeness -= food.rej_level
  end

  def buy_food(food)
    @wallet -= food.price
    eat_food(food)
  end

end
