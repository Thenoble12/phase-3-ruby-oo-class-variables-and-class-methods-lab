class Song

    attr_reader :name, :artist, :genre
    # attr_accessor :count, :artist, :genres, :artist_count, :genre_count
    @@count = 0
    @@artists = []
    @@genres = []
    
    def initialize(name, artist, genre)
            @name = name
            @artist = artist
            @genre = genre
            @@count = @@count + 1
            @@artists.push(artist)
            @@genres.push(genre)        
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

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
          artist_count[artist] ? artist_count[artist] += 1 
                               : artist_count[artist] = 1         
        end
        artist_count       
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
          genre_count[genre] ? genre_count[genre] += 1 
                             : genre_count[genre] = 1         
        end
        genre_count  
    end
end