require 'pry'
class Artist < ActiveRecord::Base
    has_many :songs

    def song_count
        #binding.pry
        self.songs.size
    end
end
