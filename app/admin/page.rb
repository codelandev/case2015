ActiveAdmin.register Page do
  permit_params :title, :content
  menu priority: 4
  actions :all, except: :show

  form do |f|
    inputs :page do
      input :title, collection: PageTitle.to_a, as: :select, include_blank: false
      input :content, as: :html_editor
    end
    actions
  end

  index do
    column :title do |page|
      page.title_humanize
    end
    column :updated_at
    actions
  end
end
