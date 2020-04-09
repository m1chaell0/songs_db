class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
  end

  def create
    @artist = Artist.new(artist_params)

    @artist.save
    redirect_to @artist
  end

  private

  def group_params
    params.require(:artist).permit(:name, :group_id)
  end
end
