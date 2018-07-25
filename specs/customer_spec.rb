require("minitest/autorun")
require("minitest/rg")
require_relative("../customer")

class CustomerTest < MiniTest::Test


  def setup()
    @customer1 = Customer.new("Upul", 50)
  end

  def test_customer_has_name_and_money()
    assert_equal("Upul", @customer1.name)
    assert_equal(50, @customer1.wallet)
  end

  def test_buy_drink()
    @customer1.buy_drink(7)
    assert_equal(43, @customer1.wallet) 

  end


end
