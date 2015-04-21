class PagesController < ApplicationController
  def home
    ## Events
    @events = Event.in_the_future.order(happens_at: :asc)
    @event_days = []
    @events.pluck(:happens_at).map { |datetime| datetime.to_date }.uniq .each do |date|
      events = Event.select{ |event| event.happens_at.to_date == date }
      @event_days << EventDay.new(events: events, date: date)
    ## Sponsors
    @sponsors = Sponsor.order("RANDOM()").first(6)
    end
    ## Speakers
    @speakers = Speaker.order("RANDOM()").first(8)
    ## Exhibitors
    @exhibitors = Exhibitor.order("RANDOM()").first(6)
  end

  def sponsors
    @sponsors = Sponsor.order("RANDOM()")
  end

  def speakers
    @speakers = Sponsor.order("RANDOM()")
  end

  def exhibitors
    @exhibitors = Exhibitor.order("RANDOM()")
  end
end
