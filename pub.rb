class Pub

  attr_reader :till

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def count_menu()
    return @drinks.count()
  end

  def sell_drink(customer, drink)
    if customer.legal() == false
      return "You're too young"
    elsif customer.drunkeness() >= 50
      return "You're too drunk"
    elsif @drinks.include?(drink)
      drink_to_sell = drink
      @till += drink_to_sell.price()
      customer.buy_drink(drink_to_sell)
      return drink_to_sell.name
    end
  end
end
