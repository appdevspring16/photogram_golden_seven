class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

def show
@photo = Photo.find_by({:id=>params[:identification_number]})
end

def new_form
end

def delete
p = Photo.find_by({:id=>params[:identification_number]})
p.destroy
redirect_to("/photos")
end

def create_row
p = Photo.new
p.caption = params[:the_caption]
p.source = params[:the_source]
p.save
redirect_to("/photos")
end

def edit_form
  @photo = Photo.find_by({:id=>params[:id]})
end

def update_row
  @photo = Photo.find_by({:id=>params[:identification_number]})
  @photo.caption = params[:edited_caption]
  @photo.source = params[:edited_source]
  @photo.save
end

end
