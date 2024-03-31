ActiveAdmin.register Employee do
  permit_params :first_name, :last_name, :email, :password, :password_confirmation, :type

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :created_at
    actions
  end


  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :department 
    end
    f.actions
  end
 
end
