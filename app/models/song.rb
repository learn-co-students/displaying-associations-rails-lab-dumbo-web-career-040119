require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    #binding.pry
    self.artist.name
  end
end
