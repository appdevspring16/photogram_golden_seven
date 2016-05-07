Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Create"
  get("/photos/new", { :controller => "photos", :action => "new_form"})
  get("/create_photo", { :controller => "photos", :action => "create_row"})

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  # Delete:
  get("/delete_photo/:id",       { :controller => "photos", :action => "destroy" })

  # Edit
  get("/photos/:id/edit",       { :controller => "photos", :action => "edit_row" })
  get("/editsave/:id",       { :controller => "photos", :action => "save_edit" })
  get("/editsave",       { :controller => "photos", :action => "save_edit" })

end
