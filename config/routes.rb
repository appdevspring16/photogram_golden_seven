Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to Create photos
  # The first route simply produces the blank form.
  # The second route will process and input the data in to the database.
  get("/photos/new",       { :controller => "photos", :action => "new_form" })
  get("/create_photo",       { :controller => "photos", :action => "create_row" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  # Update
  get("/photos/:id/edit",{:controller=>"photos", :action=> "edit"})
  get("update_row/:id/",{:controller=>"photos", :action=> "update_row"})


  #Delete
  get("/delete_photo/:id", {:controller => "photos", :action => "destroy"})

end
