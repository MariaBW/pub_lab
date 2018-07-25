require("minitest/autorun")
require("minitest/rg")
require_relative("../customer")
require_relative("../drink")

class CustomerTest < MiniTest::Test


  def setup()
    @customer1 = Customer.new("Upul", 50, 34, 20)
    @customer2 = Customer.new("Baby", 5, 5, 0)
  end

  def test_customer_has_name_and_money()
    assert_equal("Upul", @customer1.name)
    assert_equal(50, @customer1.wallet)
  end

  def test_buy_drink()
    @drink1 = Drink.new("Margarita", 7, 10)
    @customer1.buy_drink(@drink1)
    assert_equal(43, @customer1.wallet())
    assert_equal(30, @customer1.drunkeness())
  end

  def test_customer_is_legal()
    assert_equal(true, @customer1.legal())
    assert_equal(false, @customer2.legal())
  end


end
