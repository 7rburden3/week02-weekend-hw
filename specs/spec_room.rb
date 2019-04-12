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
    #array required as part of program spec


    @guest1 = Guest.new("Alex")
    @guest2 = Guest.new("John")
    @guest3 = Guest.new("Katie")

    @guests = [@guest1, @guest2, @guest3]

    #create a room object and add songs to the room
    @room1 = Room.new("E30 Room")
  end

  def test_room_has_a_name
    assert_equal("E30 Room", @room1.room_name)
  end

  # be able to add songs to room
  # be able to add guests to room

  def test_number_of_guests_in_room
    assert_equal(0, @room1.number_of_guests_in_room)
  end

  def test_can_add_guest_to_room
    @room1.can_add_guest_to_room(@guest1)
    assert_equal(1, @room1.number_of_guests_in_room)
  end

  def test_can_add_group_of_guests_to_room
    @room1.can_add_group_of_guests_to_room(@guests)
    assert_equal(3, @room1.number_of_guests_in_room)
  end

  def test_can_remove_guest_from_room
    @room1.can_add_guest_to_room(@guest1)
    @room1.can_add_guest_to_room(@guest2)
    @room1.can_remove_guest_from_room(@guest1)
    assert_equal(1, @room1.number_of_guests_in_room)
  end

  def test_can_remove_all_guests_from_room
    @room1.can_add_group_of_guests_to_room(@guests)
    assert_equal(3, @room1.number_of_guests_in_room)
    @room1.can_remove_group_of_guests_from_room(@guests)
    assert_equal(0, @room1.number_of_guests_in_room)
  end

  def number_of_songs_on_playlist
    assert_equal(0, @room1.number_of_songs_on_playlist)
  end

  def test_can_add_songs_to_room
    @room1.can_add_songs_to_room(@song1)
    @room1.can_add_songs_to_room(@song2)
    assert_equal(2, @room1.number_of_songs_on_playlist)
  end


end #end class
