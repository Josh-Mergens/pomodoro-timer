welcome_message = "Welcome to BlueCat Timer. How many minutes "
welcome_message += "would you like me to set for you?"
time_up = "The kitty wants to play. Time is up."
puts welcome_message
system (%Q{say #{welcome_message}})
minutes = gets.chomp.to_i

start_time = Time.now
seconds = minutes * 60
end_time = start_time + seconds

while Time.now < end_time
  sleep 1
end

system(%Q{say #{time_up}})
