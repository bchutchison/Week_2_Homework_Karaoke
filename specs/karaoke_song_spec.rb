require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_song.rb')

class Karaoke_songTest < MiniTest::Test

  def setup
    @karaoke_song = Karaoke_song.new("Born to Run", "Bruce Springsteen", 5)
  end

  def test_karaoke_song_name
    assert_equal("Born to Run", @karaoke_song.name)
  end

  def test_karaoke_song_artist
    assert_equal("Bruce Springsteen", @karaoke_song.artist)
  end

  def test_karaoke_song_difficulty
    assert_equal(5, @karaoke_song.difficulty)
  end

end
