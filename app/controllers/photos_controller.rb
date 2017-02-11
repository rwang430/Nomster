class PhotosController < ApplicationController
  before_action :authenticate_user!
  def create
    place = Place.find(params[:place_id])
    @photo = place.photos.create(photo_params)
    redirect_to place_path(place)
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture1800)
  end
end
