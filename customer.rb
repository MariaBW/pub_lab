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




end
