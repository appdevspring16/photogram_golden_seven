class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photoid = params[:id]

    @source = Photo.find(@photoid).source

    @caption = Photo.find(@photoid).caption
  end

  def delete_photo
    ph = Photo.find(params[:id])
    ph.destroy

    redirect_to("/photos")
  end

  def new_form

  end

  def edit_form
    @photoid = params[:id]

    @source = Photo.find(@photoid).source

    @caption = Photo.find(@photoid).caption
  end

  def create_row
    ph = Photo.new
    ph.source = params[:the_source]
    ph.caption =params[:the_caption]

    ph.save

    redirect_to("/photos")
  end

  def update_row
    ph = Photo.find(params[:id])
    ph.source = params[:the_source]
    ph.caption =params[:the_caption]

    ph.save

    redirect_to("/photos")
  end
end
