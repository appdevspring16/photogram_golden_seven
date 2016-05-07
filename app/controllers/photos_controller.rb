class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })
    #@photo_source = p.source
    #@photo_caption = p.caption
    #@photo_id = p.id
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
    p_destroy = Photo.find(params[:id])
    p_destroy.destroy
    redirect_to("/photos")
  end

  def edit_form
    @photo = Photo.find_by({ :id => params[:id] })
  end

  def update_row
    @photo = Photo.find(params[:id])
    @photo.caption = params[:the_caption]
    @photo.source = params[:the_source]
    @photo.save
    render("show.html.erb")
  end

end
