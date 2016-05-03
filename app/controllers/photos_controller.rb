class PhotosController < ApplicationController
  def index
  @list_of_photos = Photo.all
  end

  def show
  @photo = Photo.find_by({:id => params[:id]})
  end

  def new_form


  end

  def create_row

  p = Photo.new
  p.caption = params[:caption]
  p.source = params[:source]
  p.save

  redirect_to("http://localhost:3000/photos")

  end

end
