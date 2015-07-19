ActiveAdmin.register Exhibitor do
  permit_params :logo, :name, :description, :website
  menu priority: 7
end
