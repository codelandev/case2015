ActiveAdmin.register Speaker do
  permit_params :name, :avatar, :website, :company, :bio
  menu priority: 6

  form do |f|
    inputs :speaker do
      input :name
      input :avatar
      input :bio, as: :html_editor
      input :company
      input :website
    end
    actions
  end
end
