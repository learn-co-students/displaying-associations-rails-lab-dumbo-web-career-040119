class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    @artist = self.artist
    @artist.name
  end

  def index_display
    "#{self.artist_name} - #{self.title}"
  end

end
