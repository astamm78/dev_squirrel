class PhotosController < ApplicationController

  def index
    @title = "Photos"
    @body_class = "photo"
    @photos = Photo.all
  end

  def create
    photo = Photo.create(params[:photo]);
    if photo.save
      redirect_to photos_path
    else
      flash[:errors] = "Photo did not save"
      redirect_to admins_path
    end
  end

end