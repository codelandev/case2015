class Schedule
  attr_accessor :month, :events, :year

  def initialize(params={})
    self.events = []
    params.each{ |key,value| send(:"#{key}=", value) }
  end
end
