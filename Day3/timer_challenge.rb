max_timer = 10.00
current_timer = 0.00
start_time = Time.now
while current_timer <= max_timer
    print "\rTimer is ticking. #{current_timer}"
    current_time_diff = Time.now - start_time
    current_timer = current_time_diff.round(2)
end
puts "Timer is finished!"
