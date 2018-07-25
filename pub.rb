class Pub


  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def count_menu()
    return @drinks.count()
  end


end
