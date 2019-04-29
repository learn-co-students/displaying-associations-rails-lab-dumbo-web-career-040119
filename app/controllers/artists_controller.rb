class ArtistsController < ApplicationController

  before_action :get_artist, only: [:edit, :update, :show]

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end

  def update
    @artist.update(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render :edit
    end
  end

  def destroy
    get_artist
    @artist.destroy
    flash[:notice] = "Artist has been deleted."
    redirect_to artists_path
  end

  private

  def get_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name)
  end

end
