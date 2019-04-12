require("minitest/autorun")
require("minitest/rg")

require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Thunderstruck", "ACDC")
    @song2 = Song.new("Red Barchetta", "Rush")
    @song3 = Song.new("Prowler", "Iron Maiden")
  end #end setup

  def test_song_has_title
    assert_equal("Red Barchetta", @song2.title)
  end

  def test_song_has_artist
    assert_equal("ACDC", @song1.artist)
  end

end #end class
