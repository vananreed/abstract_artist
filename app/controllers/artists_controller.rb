class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render 'new'
    end
  end

  def index
    @artists = Artist.all
  end

  def update
    if @artist.update(artist_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @artist.destroy

    redirect_to root_path
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :description)
  end
end
