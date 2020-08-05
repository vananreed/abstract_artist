class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_artwork, only: [:show, :edit, :update, :destroy]

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    if @artwork.save
      redirect_to @artwork
    else
      render 'new'
    end
  end

  def index
    @arts = Artwork.all
  end

  def update
    if @artwork.update(artwork_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @artwork.destroy

    redirect_to root_path
  end

  private

  def set_artwork
    @artwork = Artwork.find(params[:id])
  end

  def artwork_params
    params.require(:artwork).permit(:name, :description, :photo)
  end
end
