class Karaoke_room

  attr_reader :name, :price, :max_guests

  def initialize(name, price, max_guests)
    @name = name
    @price = price
    @max_guests = max_guests
    @songs = []
    @guests = []
  end


  def num_of_guests
    return @guests.size
  end

  def add_guest(guest)
    if num_of_guests < @max_guests
      @guests.push(guest)
    else
      return "This room is full. Please choose a different room."
    end
  end

  def remove_guest(guest)
      @guests.delete(guest)
  end

  def num_of_songs
    return @songs.size
  end

  def add_song(song)
    if is_song_available(song) == "no"
      @songs.push(song)
    end
  end

  def is_song_available(song)
    if @songs.include?(song)
      return "yes"
    else
      "no"
    end
  end


end
