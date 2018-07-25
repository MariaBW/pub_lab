require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")
require_relative("../customer")
require_relative("../drink")

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Margarita", 7, 10)
    @drink2 = Drink.new("Mojito", 6, 12)
    @pub1 = Pub.new("The Red Herring", 500, [@drink1, @drink2])
  end

  def test_pub_drink_count()
    assert_equal(2, @pub1.count_menu())
  end

  def test_sell_drink()
    @customer1 = Customer.new("Mickey", 50, 60, 30)
    result = @pub1.sell_drink(@customer1, @drink1)
    assert_equal("Margarita", result)
    assert_equal(507, @pub1.till)
  end

  def test_refuse_drink_age()
    @customer2 = Customer.new("Baby", 10, 5, 0)
    result = @pub1.sell_drink(@customer2, @drink1)
    assert_equal("You're too young", result)
  end

  def test_refuse_drink_too_drunk()
    @customer3 = Customer.new("Boris", 50, 60, 50)
    result = @pub1.sell_drink(@customer3, @drink1)
    assert_equal("You're too drunk", result)
  end








end
