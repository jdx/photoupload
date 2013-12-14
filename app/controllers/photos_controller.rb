class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render json: @photos
  end
  
  def create
    photo = Photo.new(photo_params)
    photo.save!
    
    head :ok
  end
  
  private
  
  def photo_params
    params.require(:photo).permit(:name, :photo)
  end
end