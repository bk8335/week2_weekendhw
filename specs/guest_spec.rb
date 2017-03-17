require ('minitest/autorun')
require ('minitest/rg')
require_relative('../guests')

class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guests.new("Ben")
  end

  def test_guest_name
    assert_equal("Ben", @guest1.guest_name)
  end

end