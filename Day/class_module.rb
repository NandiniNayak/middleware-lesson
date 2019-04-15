require_relative './module.rb'


class Date
    include CalendarDate
    def meeting_date
        puts "meeting date"
    end
end

date = Date.new
date.current_date
date.meeting_date