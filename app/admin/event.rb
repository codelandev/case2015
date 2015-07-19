ActiveAdmin.register Event do
  permit_params :title, :happens_at, :speaker, :place
  menu priority: 3, label: 'Programação'

end
