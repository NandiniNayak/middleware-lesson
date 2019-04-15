# # module is a wrapper around class for name spacing

# class Date
# #    class << self
# #         def show_date
# #             puts "calendar date"
# #         end
# #     end
#     def self.show_date
#         puts "calendar date"
#     end
# end

# class Date
#    class << self
#         def show_date
#             puts "meeting date"
#         end
#     end
# end
# Date.show_date

module CalendarDate
    def current_date 
        puts "print out current date"
    end
end


# module MeetingDate
#     class Date
#         def self.show_date
#             puts "this is meeting date"
#         end
#     end
# end

# CalendarDate::Date.show_date
# MeetingDate::Date.show_date