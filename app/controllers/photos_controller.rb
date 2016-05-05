class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end
  def show
    @selected = Photo.find_by(:id => params[:id])
  end
  def new_form
  end
  def create_row
    new_photo = Photo.new
    new_photo.source = params[:the_source]
    new_photo.caption = params[:the_caption]
    new_photo.save
    redirect_to("http://localhost:3000/photos")
  end
  def destroy
    delete = Photo.find_by(:id => params[:id]).
    delete.destroy
    redirect_to("http://localhost:3000/photos")
  end
  def edit_form
  @photo = Photo.find_by(:id => params[:id])
  end
  def edit_row
    photo = Photo.find_by(:id => params[:id])
    photo.source = params[:the_source]
    photo.caption = params[:the_caption]
    photo.save
    redirect_to("http://localhost:3000/photos/"+params[:id])
  end

end
