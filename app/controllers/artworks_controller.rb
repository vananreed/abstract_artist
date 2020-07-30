class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @arts = Artwork.all
  end
end
