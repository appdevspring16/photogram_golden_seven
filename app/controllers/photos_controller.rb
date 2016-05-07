class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({:id => params[:id]})
  end

  def new_form

    render("new_form.html.erb")
  end

  def create_row
    p = Photo.new
    p.caption = params[:caption]
    p.source = params[:source]
    p.save
    redirect_to("http://localhost:3000")
  end

  def delete_row
    x = Photo.find_by({:id => params[:id]})
    x.destroy
    redirect_to("http://localhost:3000")
  end

  def edit_form
    render("edit_form.html.erb")
  end

  def update_row
p = Photo.find_by({ :id => params[:id]})
p.source = params[:the_source]
p.caption = params[:the_caption]
p.save
redirect_to("/photos/:id")
end
