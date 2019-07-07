class Karaoke_guest

  attr_reader :name, :money

  def initialize(name, money)
    @name = name
    @money = money
  end

  def buy_room(room)
    if @money > room.price
      @money -= room.price
    else
      return "You do not have enough money to hire this room."
    end
  end


end
