class PhotosController < ApplicationController

#READ
  def index
    @list_of_photos = Photo.all
  end

  def show
@photo = Photo.find_by({:id =>params[:id]})
  end

#NEW
def new_form
end

def create_row
  @photo = Photo.new
  @photo.caption = params[:caption]
  @photo.source = params[:source]
  @photo.created_at = params[:created_at]
  @photo.save
  redirect_to("/photos")
end
#UPDATE
def update
  @photo=Photo.find(params[:id])
end

def update_row
  @photo=Photo.find_by({:id=>params[:id]})
  @photo.source = params[:source]
  @photo.caption= params[:caption]
  @photo.id=params[:id]
  @photo.save
  redirect_to("/photos/show/" + @photo.id.to_s)
end

#Delete
def delete
  @photo=Photo.find_by({:id=>params[:id]})
  @photo.destroy
  redirect_to("/photos")
end

end
