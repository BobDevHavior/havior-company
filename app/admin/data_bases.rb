ActiveAdmin.register DataBase do
  actions :all, except: [:new, :create, :edit, :update, :destroy]

  permit_params :name, :host, :port, :user, :db_password, :url

  index do
    selectable_column
    id_column
    column "Adresse" do |db|
      db.url
    end
    column :port
    column :user
    column :name
    column :db_password
    column :created_at
    column :updated_at
    actions
  end
end
