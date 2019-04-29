class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    @songs = self.songs
    @songs.size
  end

end
