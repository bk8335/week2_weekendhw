
class Rooms

  attr_reader :guest_list, :playlist, :space

  def initialize()
    @guest_list = []
    @playlist = []
    @space = 1
  end

  def check_in_guest(guest)
    @guest_list.push(guest)
  end

  def check_out_guest(guest)
    @guest_list.delete(guest)
  end

  def add_song_to_playlist(song)
    @playlist.push(song)

  end


end