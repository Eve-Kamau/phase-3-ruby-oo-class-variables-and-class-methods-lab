require 'pry'
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
    @@artists  << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    all_genres = Hash.new(0)
    @@genres.each do |genre|
      all_genres[genre] += 1
    end
    all_genres
  end

  def self.artist_count
    all_artists = Hash.new(0)
    @@artists.each do |artist|
      all_artists[artist] += 1
    end
    all_artists
  end

end

puts song1 = Song.new("Give Me","Fernando","Gospel")
puts song2 = Song.new("99 Problems", "Jay-Z", "Rap")
puts song3 = Song.new("Chasing Pavements", "Adele", "Pop Soul")

puts 
puts song2.name
puts song2.artist
puts song2.genre

puts 
puts Song.count
puts Song.genres
puts Song.artists
puts Song.genre_count
puts Song.artist_count


# puts Song.all


# binding.pry


