class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })
  end

  def new_form

  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    @photo_to_delete = Photo.find_by({ :id => params[:id] })
    @photo_to_delete.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @photo_to_edit = Photo.find_by({ :id => params[:id] })
  end

  def update_row
    p = Photo.find_by({ :id => params[:id] })
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    # @photo_to_edit = Photo.find_by({ :id => params[:id] })
    redirect_to(("http://localhost:3000/photos/".to_s) + (p.id.to_s))

  end
end
