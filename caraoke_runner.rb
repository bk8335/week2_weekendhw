require_relative('guests')
require_relative('rooms')
require_relative('songs')

class Runner

  def initialize()
    songs = Songs.new("Wonderwall", "Oasis")
    @room = Rooms.new()

    puts "Hello caraoke singer, what is your name?"
    guest1_name = gets.chomp
    puts "how much money do you have - this isn't real life"
    guest1_money = gets.chomp.to_i
    @guest1 = Guests.new(guest1_name, guest1_money)
  end


  def run
    puts "You are called #{@guest1.guest_name} and have £#{@guest1.money}"
    puts "The capacity of the bar is #{@room.space} and the entry fee is #{@room.entry_fee}"
    puts "Would you like to enter (Y/N)"
    decide_to_enter = gets.chomp.downcase
    if decide_to_enter == "y"
      puts @room.check_in_guest(@guest1)
      puts @room.guest_list
    else
      puts "ok, poor choice to come to a karaoke bar then not want to go in"
    end
  end

end

Runner.new.run()