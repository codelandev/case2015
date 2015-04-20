ActiveAdmin.register Event do
  permit_params :title, :happens_at, :speaker, :place
end
