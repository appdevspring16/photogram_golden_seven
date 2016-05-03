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

  @photo = Photo.new
  @photo.caption = params[:caption]
  @photo.source = params[:source]
  @photo.save

  redirect_to("http://localhost:3000/photos")

  end

  def destroy

    photo = Photo.find_by({:id => params[:id]})
    photo.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @photo = Photo.find_by({:id => params[:id]})

  end

  def update_photo
    @photo = Photo.find_by({:id => params[:id]})
    @photo.caption = params[:caption]
    @photo.source = params[:source]
    @photo.save

    redirect_to("http://localhost:3000/photos")

  end

end
