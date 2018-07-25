require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")
require_relative("../customer")
require_relative("../drink")

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Margarita", 7)
    @drink2 = Drink.new("Mojito", 6)
    @pub1 = Pub.new("The Red Herring", 500, [@drink1, @drink2])
  end

  def test_pub_drink_count()
    assert_equal(2, @pub1.count_menu())
  end
end
