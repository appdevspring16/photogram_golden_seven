class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id]})
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

  def destroy
    x = Photo.find_by({ :id => params[:id]})
    x.destroy
    redirect_to("/photos")
  end

  def edit_form
    @photo = Photo.find_by({ :id => params[:id]})
  end

  def update_row
    y= Photo.find_by({ :id => params[:id]})
    y.caption = params[:the_caption]
    y.source = params[:the_source]
    y.save
    redirect_to("/photos/" + params[:id].to_s)
  end
end
