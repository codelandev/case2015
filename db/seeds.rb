20.times do |n|
  n+=1
  Post.create!(title: "Título #{n}",
               short_description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.',
               content: '<h1> Título </h1> <p> lorem ipsum </p>',
               published_at: n.days.ago,
               author: 'CASE')

  Event.create!(title: "Evento #{n}",
                happens_at: (n*3).hours.from_now,
                place: "Salão #{n}",
                speaker: "Palestrante #{n}")

  Exhibitor.create!(logo: open('http://lorempixel.com/600/400/abstract/'),
                    name: "Expositor #{n}",
                    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporvelit esse cillum dolore eu fugiat nulla.',
                    website: 'http://google.com')

  Speaker.create!(name: "Palestrante #{n}",
                  company: "Empresa #{n}",
                  website: 'http://google.com',
                  avatar: open('http://lorempixel.com/600/400/people/'))

  Partner.create!(logo: open('http://lorempixel.com/600/400/abstract/'),
                  website: 'http://google.com')

  Sponsor.create!(logo: open('http://lorempixel.com/600/400/abstract/'),
                  website: 'http://google.com')

  Supporter.create!(logo: open('http://lorempixel.com/600/400/abstract/'),
                    website: 'http://google.com')
end
