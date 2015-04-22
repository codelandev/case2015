ActiveAdmin.register Post do
  permit_params :title, :published_at, :short_description, :content, :author

  form do |f|
    inputs :post do
      input :title
      input :published_at
      input :short_description
      input :content, as: :html_editor
      input :author
    end
    actions
  end
end
