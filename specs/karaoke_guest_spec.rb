require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_guest.rb')
require_relative('../karaoke_room.rb')

class Karaoke_guestTest < MiniTest::Test

  def setup
    @karaoke_guest = Karaoke_guest.new("Sue", 100, "Born to Run")
    @karaoke_guest2 = Karaoke_guest.new("Sue", 5, "Mr. Brightside")
    @room1 = Karaoke_room.new("Room_1", 10, 8)
  end

  def test_karaoke_guest_name
    assert_equal("Sue", @karaoke_guest.name)
  end

  def test_karaoke_guest_money
    assert_equal(100, @karaoke_guest.money)
  end

  def test_guest_buy_room
    @karaoke_guest.buy_room(@room1)
    assert_equal(90, @karaoke_guest.money)
  end

  def test_guest_buy_room__insufficient_money
    assert_equal("You do not have enough money to hire this room.", @karaoke_guest2.buy_room(@room1))
  end


end
