class PhotosController < ApplicationController

  def index
    @title = "Photos"
    @body_class = "photo"
  end

  def create
    photo = Photo.create(params[:photo]);
    redirect_to photos_path
  end

end