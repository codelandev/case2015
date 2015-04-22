ActiveAdmin.register Page do
  permit_params :title, :content

  form do |f|
    inputs :page do
      input :title, collection: PageTitle.to_a, as: :select, include_blank: false
      input :content, as: :html_editor
    end
    actions
  end

  index do
    column :title
    actions
  end
end
