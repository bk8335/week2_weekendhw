
class Rooms

  attr_reader :guest_list, :playlist, :space, :entry_fee

  def initialize()
    @guest_list = []
    @playlist = []
    @space = 2
    @entry_fee = 10
  end

  def check_in_guest(guest)
    if @space > 0 && guest.money > @entry_fee
      @guest_list.push(guest)
      @space -= 1
      guest.money -= @entry_fee
    else
      return "There is no space left in the karaoke room or you are too poor to get in anyway"
    end
  end

  def check_out_guest(guest)
    @guest_list.delete(guest)
    @space -=1
  end

  def add_song_to_playlist(song)
    @playlist.push(song)

  end


end