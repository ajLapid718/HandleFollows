def start_browser_session
  @browser = Watir::Browser.start("https://www.instagram.com/", :chrome, switches: %w[--log-level=3 --headless])
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
  puts "Successfully logged in. Navigating to your follow requests now..."
end

# Invoke Login Process
start_browser_session
click_on_log_in
enter_email
enter_password
