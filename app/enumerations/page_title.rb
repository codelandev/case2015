class PageTitle < EnumerateIt::Base
  associate_values about: 0, about_en: 1
  sort_by :value
end
