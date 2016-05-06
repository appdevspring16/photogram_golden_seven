class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    p = Photo.find_by({ :id => params[:id] })
    @photo_source = p.source
    @photo_caption = p.caption
    @photo_id = p.id

  end

  def new_form

  end

  def create_row
    r = Photo.new
    r.caption = params[:the_caption]
    r.source = params[:the_source]
    r.save
    redirect_to("http://localhost:3000/photos")
  end

def delete
    d = Photo.find_by({ :id => params[:id] })
    d.destroy

redirect_to("http://localhost:3000/photos")
end
def edit_form
  e = Photo.find_by({ :id => params[:id] })
  @photo_source_e = e.source
  @photo_caption_e = e.caption
  @photo_id_e = e.id
end

end
