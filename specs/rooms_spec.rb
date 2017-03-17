require ('minitest/autorun')
require ('minitest/rg')
require ('pry')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class TestRooms < MiniTest::Test

  def setup
    @room1 = Rooms.new()
    @guest1 = Guests.new("Mr Max", 50)
    @guest2 = Guests.new("Ben", 4)
    @guest3 = Guests.new("Elon", 86_000)
    @song1 = Songs.new("Like the way you move", "Ed Sheeran")
  end

  def test_rooms_guest_empty
    assert_equal([], @room1.guest_list)
  end

  def test_rooms_playlist_empty
    assert_equal([], @room1.playlist)
  end

  def test_check_guest_in
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_in_guest(@guest3)
    assert_equal(2, @room1.guest_list.length)
    assert_equal(40, @guest1.money)
  end

  def test_check_guest_out
    @room1.check_in_guest(@guest1)
    assert_equal(1, @room1.guest_list.length)
    @room1.check_out_guest(@guest1)
    assert_equal(0, @room1.guest_list.length)
  end

  def test_add_song_to_playlist
    @room1.add_song_to_playlist(@song1)
    assert_equal(1, @room1.playlist.length)
  end
end