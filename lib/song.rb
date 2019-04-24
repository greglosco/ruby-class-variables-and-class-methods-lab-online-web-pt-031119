class Song
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << genre
    @@artists << artist
  end 
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres
  end
  
  def self.artists
    @@artists
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each {|genre|
      if genre_count[genre] = genre
        genre_count[genre] += 1
      else genre_count[genre]
    end
    }
    genre_count
  end 
  
  def self.artist_count
    @@artists.each_with_index.collect {|artist_name, index|}
  end 
  
end