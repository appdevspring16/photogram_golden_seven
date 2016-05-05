class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    photo = Photo.find_by({ :id => params[:id] }) #Ask about this line
    @photo_source = photo.source
    @photo_caption = photo.caption
    @photo_id = photo.id
  end

  def new_form

  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    # Defaults to:
    # render("create_row.hrml.erb")
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    photo = Photo.find_by({ :id => params[:id] })
    photo.destroy
    redirect_to("http://localhost:3000/photos")
  end


def edit_form


redirect_to("http://localhost:3000/photos/params[id]")
end

end
