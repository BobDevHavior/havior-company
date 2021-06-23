ActiveAdmin.register User do
  actions :all, except: [:new, :create, :edit, :update, :destroy]
  
  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :job
    column :hobby  
    column :years       
    column :admin
    actions
  end

  filter :email
  filter :first_name
  filter :last_name
  
end
