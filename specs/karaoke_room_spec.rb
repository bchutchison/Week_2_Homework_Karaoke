require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_room.rb')
require_relative('../karaoke_guest.rb')
require_relative('../karaoke_song.rb')

class Karaoke_roomTest < MiniTest::Test

  def setup
    @karaoke_room = Karaoke_room.new("Room_1", 10, 8)
    @guest1 = Karaoke_guest.new("Sue", 100)
    @song1 = Karaoke_song.new("Born to Run", "Bruce Springsteen", 5)
  end

  def test_karaoke_room_name
    assert_equal("Room_1", @karaoke_room.name)
  end

  def test_karaoke_room_price_total
    assert_equal(10, @karaoke_room.price)
  end

    def test_karaoke_room_size_max
      assert_equal(8, @karaoke_room.max_guests)
    end

    def test_number_of_guests_in_room
      assert_equal(0, @karaoke_room.num_of_guests)
    end

    def test_add_guest_to_room
      @karaoke_room.add_guest(@guest1)
      assert_equal(1, @karaoke_room.num_of_guests)
    end

    def test_add_guest_to_room
      @karaoke_room.add_guest(@guest1)
      @karaoke_room.add_guest(@guest1)
      @karaoke_room.add_guest(@guest1)
      assert_equal(3, @karaoke_room.num_of_guests)
    end

    def test_add_guest_to_room__too_many_guests
      @karaoke_room.add_guest(@guest1)
      @karaoke_room.add_guest(@guest1)
      @karaoke_room.add_guest(@guest1)
      @karaoke_room.add_guest(@guest1)
      @karaoke_room.add_guest(@guest1)
      @karaoke_room.add_guest(@guest1)
      @karaoke_room.add_guest(@guest1)
      @karaoke_room.add_guest(@guest1)
      @karaoke_room.add_guest(@guest1)
      assert_equal(8, @karaoke_room.num_of_guests)
    end

    def test_remove_guest_from_room
      @karaoke_room.add_guest(@guest1)
      @karaoke_room.remove_guest(@guest1)
      assert_equal(0, @karaoke_room.num_of_guests)
    end

    def test_number_of_songs_in_room
      assert_equal(0, @karaoke_room.num_of_songs)
    end

    def test_add_song_to_room
      @karaoke_room.add_song(@song1)
      assert_equal(1, @karaoke_room.num_of_songs)
    end

    def test_add_song_to_room
      @karaoke_room.add_song(@song1)
      assert_equal(1, @karaoke_room.num_of_songs)
    end

    def test_add_song_to_room__already_exists
      @karaoke_room.add_song(@song1)
      @karaoke_room.add_song(@song1)
      assert_equal(1, @karaoke_room.num_of_songs)
    end

    def test_is_song_available
      @karaoke_room.add_song(@song1)
      assert_equal("yes", @karaoke_room.is_song_available(@song1))
    end


end
