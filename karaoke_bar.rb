class Karaoke_bar

  attr_reader :name, :till

  def initialize(name, till)
    @name = name
    @till = till
    @rooms = Hash.new(0)
  end

  def till_sale(room)
    @till += room.price
  end

  def rent_out_room(room, guest)
    till_sale(room)
    guest.buy_room(room)
  end

end
