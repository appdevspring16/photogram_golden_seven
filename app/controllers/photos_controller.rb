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
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    redirect_to("/photos")
  end

  def delete_row
    d = Photo.find_by({:id => params[:id]})
    d.destroy
    redirect_to("/photos")
  end

  def edit_form
    @photo = Photo.find_by({:id => params[:id]})
    @photo_caption = @photo[:caption]
    @photo_source = @photo[:source]
  end

  def edit_row

  end

end
