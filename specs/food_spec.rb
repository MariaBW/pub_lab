require('minitest/autorun')
require('minitest/rg')

require_relative('../food')

class FoodTest < MiniTest::Test

def setup()
    @food1 = Food.new("Chips", 4, 5)
end

end
