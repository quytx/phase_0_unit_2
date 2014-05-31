# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.


# Pseudocode



# Initial Solution
class Song
  
  def initialize(name, artist)
    @name = name
    @artist = artist    
  end 
  
  def get_name
    return @name
  end
  
  def get_artist
    return @artist
  end
  
  def play
      puts "Now playing: #{@name}, #{@artist}.."
  end
   
end

class Playlist
  
  def initialize
    @list = []
  end
  
  def initialize(*songs)
    @list = songs
  end
  
  def add(*songs)
    @list.concat(songs)
  end
  
  def num_of_tracks
    return @list.length
  end
  
  def remove(song)
    @list.delete(song)
  end
  
  def includes?(song)
    return @list.include?(song)
  end
  
  def play_all
    @list.each do |song|
      song.play
    end
  end
  
  def display
    puts "Current playlist:"
    @list.each do |song|
      puts song.get_name + ", " + song.get_artist
    end
  end
  
end



# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 