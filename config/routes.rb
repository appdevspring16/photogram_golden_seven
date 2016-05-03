Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

# Routes to CREATE photos
  get("/photos/new",       { :controller => "photos", :action => "new_form" })
  get("/create_photo",       { :controller => "photos", :action => "create_row" })

  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })

  get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })
  get("/photos/:id/edit/update_photo", { :controller => "photos", :action => "update_photo" })
  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

end
