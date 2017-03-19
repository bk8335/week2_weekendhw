require_relative('guests')
require_relative('rooms')
require_relative('songs')
require('pry')

class Runner

  def initialize()
    @song1 = Songs.new("Wonderwall", "Oasis")
    @room = Rooms.new()
    @room.add_song_to_playlist(@song1.song_name)


    puts "Hello karaoke singer, what is your name?"
    guest1_name = gets.chomp
    puts "how much money do you have?"
    guest1_money = gets.chomp.to_i
    @guest1 = Guests.new(guest1_name, guest1_money)
  end


  def run
    puts "You are called #{@guest1.guest_name} and have £#{@guest1.money}"
    puts "The capacity of the bar is #{@room.space} and the entry fee is #{@room.entry_fee}"

    puts "Would you like to enter (Y/N)"
    decide_to_enter = gets.chomp.downcase
    if decide_to_enter == "y"
      @room.check_in_guest(@guest1)
      puts @guest1.money
    else
      puts "ok, poor choice to come to a karaoke bar then not want to go in"
    end

    puts "name the artist you would like to add to the playlist"
    song2_artist = gets.chomp
    puts "name the song by that artist you want to add"
    song2_song = gets.chomp
    @song2 = Songs.new(song2_song, song2_artist)
    @room.add_song_to_playlist(@song2.song_name)
    puts "Great. The current playlist in the room is now #{@room.playlist}"

    puts "Would you like to leave the karaoke room now? (Y/N)"
    decide_to_leave = gets.chomp.downcase
    if decide_to_leave == "y"
      @room.check_out_guest(@guest1)
      puts "The room now has #{@room.guest_list.length} guests in it. Goodbye!"
      # how do I move back up the script? e.g. If he doesn't want to leave then I want to go up to line34 for the adding songs part again.
    end

  end

end

Runner.new.run()