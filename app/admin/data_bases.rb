ActiveAdmin.register DataBase do
  actions :all, except: [:new, :create, :edit, :update, :destroy]

  permit_params :name, :host, :port, :user, :db_password
  
end
