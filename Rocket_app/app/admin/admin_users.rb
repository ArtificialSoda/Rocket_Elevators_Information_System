ActiveAdmin.register AdminUser, as:"User" do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    column :id 
    column :email
    column :encrypted_password
    column :created_at
    actions
  end

  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
