

class Karaoke_room

  attr_reader :name, :price, :max_guests, :songs


  def initialize(name, price, max_guests)
    @name = name
    @price = price
    @max_guests = max_guests
    @songs = Hash.new
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
    return @songs.length
  end

  def add_song(song)
    unless @songs.has_key?(song)
      @songs[song] = song.name
    end
  end

  def favourite_song(guest)
    @songs.each_value {|song| return "Whoo!" if song == guest.favourite_song}
    # @songs.each_value do | song |
    #   if song == guest.favourite_song
    #     return "Whoo!"
    #   end
    # end
  end


end
