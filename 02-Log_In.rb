def start_browser_session
  @browser = Watir::Browser.start("https://www.instagram.com/", :chrome, switches: %w[--log-level=3 --headless])
  puts "Opening Instagram's website..."
end

def click_on_log_in
end
