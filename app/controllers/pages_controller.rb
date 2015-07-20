class PagesController < ApplicationController
  def home
    ## Events
    @datetimes = Event.in_the_future.order(happens_at: :asc).pluck(:happens_at)
    @event_days = []
    @datetimes.map { |datetime| datetime.to_date }.uniq.each do |date|
      events = Event.order(happens_at: :asc).select{ |event| event.happens_at.to_date == date }
      @event_days << EventDay.new(events: events, date: date)
    end
    ## Sponsors
    @sponsors = Sponsor.order("RANDOM()").first(6)
    ## Speakers
    @speakers = Speaker.order("RANDOM()").first(8)
    ## Exhibitors
    @exhibitors = Exhibitor.order("RANDOM()").first(6)
    ## Partners
    @partners = Partner.order("RANDOM()").first(6)
    ## Supporters
    @supporters = Supporter.order("RANDOM()").first(6)
  end

  def sponsors
    @sponsors = Sponsor.order("RANDOM()")
  end

  def speakers
    @speakers = Speaker.order("RANDOM()")
  end

  def exhibitors
    @exhibitors = Exhibitor.order("RANDOM()")
  end

  def partners
    @partners = Partner.order("RANDOM()")
  end

  def supporters
    @supporters = Supporter.order("RANDOM()")
  end

  def events
    ## Events
    @datetimes = Event.in_the_future.order(happens_at: :asc).pluck(:happens_at)
    @event_days = []
    @datetimes.map { |datetime| datetime.to_date }.uniq.each do |date|
      events = Event.order(happens_at: :asc).select{ |event| event.happens_at.to_date == date }
      @event_days << EventDay.new(events: events, date: date)
    end
  end

  def mobile_app
  end

  def about
    @page = Page.find_by(title: PageTitle::ABOUT)
  end

  def about_en
    @page = Page.find_by(title: PageTitle::ABOUT_EN)
  end
end
