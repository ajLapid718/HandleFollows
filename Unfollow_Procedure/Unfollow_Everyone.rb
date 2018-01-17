require 'watir'
require 'highline/import'

# GET INFO
def get_username
  print "Enter your Instagram username: "
  return gets.chomp
end

def get_password
  begin
    instagram_password = ask("Enter your password: ") { |q| q.echo = "*" }
    password_confirmation = ask("Confirm your password: ") { |q| q.echo = "*" }
    if instagram_password == password_confirmation
      return instagram_password
    else
      raise Exception.new("Your passwords do not match. Try again.")
    end
  rescue Exception => error_message
    puts "#{error_message}"
    retry
  end
end

# COMMENCE LOGIN
def start_browser_session
  @browser = Watir::Browser.start("https://www.instagram.com/", :chrome, switches: %w[--log-level=3 --incognito])
  Watir.default_timeout = 10
  puts "Opening Instagram's website..."
end

def click_on_log_in
  begin
    @browser.a(:text => /^Log in$/).click
  rescue
    puts "Moving on..."
  end
end

def enter_email
  puts " "
  puts "Currently typing in your username..."
  begin
    @browser.text_field(:name => "username").set(USERNAME)
  rescue
    "Moving on..."
  end
end

def enter_password
  puts "Currently typing in your password...."
  begin
    @browser.tap { |b| b.text_field(:name => "password").set(PASSWORD) }.send_keys(:enter)
  rescue
    "Moving on..."
  end
  puts "Successfully logged in. Navigating to your personal profile now."
end

# COMMENCE UNFOLLOW PROCESS
def click_on_my_profile
  begin
    @browser.divs(:class => "_b28md").last.click
  rescue
    puts "Moving on..."
  end
  puts "Successfully navigated to your profile."
end

def grab_following_count
  @total_following_count = @browser.spans(:class => /^_fd86t _he56w$/).last.text.delete(",").to_i
end

def click_on_following
  @browser.spans(:class => /^_fd86t _he56w$/).last.click
end

# MAIN METHOD
def unfollow_them_all
  puts " "
  puts "Currently unfollowing all of the users you were following."
  @total_following_count.times do |counter|
    @browser.button(:text => /^Following$/).click
    sleep(0.5)
    puts "Successful. #{@total_following_count - (counter + 1)} remaining."
    sleep(0.5)
  end
end

# WRITE TO A TEXT FILE
def grab_all_usernames
  puts " "
  puts "Successfully unfollowed everyone."
  puts "Currently jotting down all of the usernames unfollowed..."
  new_document = File.open("ListOfUsernames.txt", "w")
  counter = 1
  @browser.divs(:class => "_f5wpw").each do |username|
    account_name, actual_name = username.text.split("\n")
    new_document.puts "#{counter} -- Account Name: #{account_name} -- Actual Name: #{actual_name}"
    counter += 1
  end
  puts "Successfully wrote down all of the usernames. Closing file now."
  new_document.close
end

def shutdown
  sleep(1)
  puts "Everything is all taken care of!"
  sleep(1)
  puts "This process took #{(Time.now - START_TIME).to_i} seconds to complete!"
  sleep(1)
  puts "Goodbye!"
  sleep(1)
  @browser.close
end

def execute_main
  START_TIME = Time.now
  USERNAME = get_username
  PASSWORD = get_password
  start_browser_session
  click_on_log_in
  enter_email
  enter_password
  click_on_my_profile
  grab_following_count
  click_on_following
  unfollow_them_all
  grab_all_usernames
  shutdown
end

if __FILE__ == $PROGRAM_NAME
  execute_main
end
