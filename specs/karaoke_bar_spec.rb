require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_bar.rb')
require_relative('../karaoke_room.rb')
require_relative('../karaoke_guest.rb')

class Karaoke_barTest < MiniTest::Test

  def setup
    @karaoke_bar = Karaoke_bar.new("Super Cube", 1000)
    @room1 = Karaoke_room.new("Room_1", 10, 8)
    @guest1 = Karaoke_guest.new("Sue", 100)
    @guest2 = Karaoke_guest.new("Dave", 5)
  end

  def test_karaoke_bar_name
    assert_equal("Super Cube", @karaoke_bar.name)
  end

  def test_karaoke_till_total
    assert_equal(1000, @karaoke_bar.till)
  end

  def test_till_sale
    @karaoke_bar.till_sale(@room1)
    assert_equal(1010, @karaoke_bar.till)
  end

  def test_rent_out_room
    @karaoke_bar.rent_out_room(@room1, @guest1)
    assert_equal(1010, @karaoke_bar.till)
    assert_equal(90, @guest1.money)
  end

  def test_rent_out_room__not_enough_money
    @karaoke_bar.rent_out_room(@room1, @guest2)
    assert_equal(1000, @karaoke_bar.till)
    assert_equal(5, @guest2.money)
  end


end
