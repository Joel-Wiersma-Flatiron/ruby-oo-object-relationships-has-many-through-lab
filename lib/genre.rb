class Genre
    attr_accessor :name, :song, :artist
    @@all = []
    def initialize(name)
        self.name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        array = []
        songs.each {|song| array << song.artist}
        array
    end

end
