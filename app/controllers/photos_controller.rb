class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    p = Photo.find_by({ :id => params[:id]})
    @photo_source = p.source
    @photo_caption = p.caption
    @photo_id = p.id
  end

  def new_form

  end

  def create_row
    p = Photo.new
    p.caption = params[:image_caption]
    p.source = params[:image_url]
    p.save

    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    p = Photo.find_by({ :id => params[:id]})
    @photo = p

  end

  def update_row
    p = Photo.find_by({ :id => params[:id]})
    p.caption = params[:image_caption]
    p.source = params[:image_url]
    p.save

    redirect_to("http://localhost:3000/photos")
  end

  def delete_photo
    p = Photo.find_by({ :id => params[:id]})
    p.delete

    redirect_to("http://localhost:3000/photos")
  end
end
