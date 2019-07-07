class Karaoke_guest

  attr_reader :name, :money, :favourite_song

  def initialize(name, money, favourite_song)
    @name = name
    @money = money
    @favourite_song = favourite_song
  end

  def buy_room(room)
    if @money > room.price
      @money -= room.price
    else
      return "You do not have enough money to hire this room."
    end
  end


end
