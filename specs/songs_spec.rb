require ('minitest/autorun')
require ('minitest/rg')
require_relative('../songs')

class TestSongs < MiniTest::Test

  def setup
    @song1 = Songs.new("Wonderwall", "Oasis")
  end

  def test_song_name
    assert_equal("Wonderwall", @song1.song_name)
  end

  def test_artist_name
    assert_equal("Oasis", @song1.artist_name)
  end


end