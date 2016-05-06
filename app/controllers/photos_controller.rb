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
    @photo = Photo.find_by({ :id => params[:id] })
  end

  def update_row
    p = Photo.find_by({ :id => params[:id]})
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save


#need to figure this bottom part out
@photo = Photo.find_by({ :id => params[:id]})
    redirect_to("http://localhost:3000/photos/"+@photo.id.to_s)


  end


end
