module ApplicationHelper
  def format_duration(seconds)
    format = (seconds >= 3600) ? '%H:%M:%S' : '%M:%S'
    Time.at(seconds).utc.strftime(format)
  end
end
