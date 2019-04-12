require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Thunderstruck", "ACDC")
    @song2 = Song.new("Red Barchetta", "Rush")
    @song3 = Song.new("Prowler", "Iron Maiden")
    #need to be able to add songs to room so create array of songs
    @songs = [@song1, @song2, @song3]

    @guest1 = Guest.new("Alex")
    @guest2 = Guest.new("John")
    @guest3 = Guest.new("Katie")
    #create a room object and add songs to the room
    @room1 = Room.new("E30 Room", @songs)
  end

  def test_room_has_a_name
    assert_equal("E30 Room", @room1.room_name)
  end



end #end class
