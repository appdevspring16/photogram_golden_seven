class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by( { :id => params[:id] })
  end

  def new_form

  end

  def create_row
    new_photo = Photo.new
    new_photo.caption = params[:the_caption]
    new_photo.source = params[:the_source]
    new_photo.save

    redirect_to("/photos")
  end

  def delete
    photo = Photo.find_by( { :id => params[:id] })
    photo.destroy
    redirect_to("/photos")
  end

  def edit_form
    @photo = Photo.find_by( { :id => params[:id] })
  end

  def update_row
    photo = Photo.find_by( { :id => params[:id] })
    photo.caption = params[:the_caption]
    photo.source = params[:the_source]
    photo.save
    
    redirect_to("/photos")
  end



end
