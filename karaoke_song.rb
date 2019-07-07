class Karaoke_song

  attr_reader :name, :artist, :difficulty

  def initialize(name, artist, difficulty)
    @name = name
    @artist = artist
    @difficulty = difficulty
  end

end
