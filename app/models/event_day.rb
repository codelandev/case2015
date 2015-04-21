class EventDay
  attr_accessor :date, :events

  def initialize(params={})
    self.events = []
    params.each{ |key,value| send(:"#{key}=", value) }
  end

  def short_month
    I18n.t('date.abbr_month_names')[date.month]
  end

  def current_year?
    date.year == Date.today.year
  end
end
