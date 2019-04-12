require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Alex")
    @guest2 = Guest.new("John")
    @guest3 = Guest.new("Katie")
  end #end setup

  def test_guest_has_name
    assert_equal("Alex", @guest1.name)
  end


end #end class
