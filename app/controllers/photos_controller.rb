class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @list_of_photos = Photo.all
  end
  def new_form
    @list_of_photos = Photo.all
  end
  def create_row
    g = Photo.new
    g.caption = params[:the_caption]
    g.source = params[:the_source]
    g.save

    redirect_to("http://localhost:3000/photos")
  end
  def destroy
    h = Photo.all
    j = h.find(params[:id])
    j.destroy
    redirect_to("http://localhost:3000/photos")
  end
  def edit_form
    @list_of_photos = Photo.all

  end
  def update_row
    j = Photo.find_by({ :id => params[:id]})
    j.caption = params[:the_caption]
    j.source = params[:the_source]
    j.save
    redirect_to("http://localhost:3000/photos/" + j.id.to_s)
  end
end
