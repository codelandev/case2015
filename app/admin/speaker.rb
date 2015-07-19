ActiveAdmin.register Speaker do
  permit_params :name, :avatar, :website, :company
  menu priority: 6
end
