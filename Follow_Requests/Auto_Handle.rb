START_TIME = Time.now

require_relative 'requirements'

sleep(1)
puts "Everything is all taken care of!"
sleep(1)
puts "This process took #{(Time.now - START_TIME).to_i} seconds to complete!"
sleep(1)
puts "Goodbye!"
sleep(1)
@browser.close
sleep(1)
