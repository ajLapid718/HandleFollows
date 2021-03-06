def click_on_heart
  begin
    @browser.a(:text => /^Activity Feed$/).click
  rescue
    puts "Moving on..."
  end
  "Successfully clicked on the heart..."
end

def open_follow_requests
  begin
    @browser.a(:text => /^Follow Requests$/).click
  rescue
    puts "Moving on..."
  end
  "Successfully opened your follow requests..."
end

def make_a_choice
  if DECISION == "A"
    @response = "Approve"
    @activity = "accepting"
  else
    @response = "Hide"
    @activity = "denying"
  end
end

def accept_all_or_reject_all
  puts " "
  puts "Currently #{@activity} all follow requests..."
  amount_of_requests = @browser.lis(:class => /^_75ljm _3qhgf$/).count
  amount_of_requests.times do |counter|
    user = @browser.a(:class => /^_2g7d5 notranslate _nodr2$/).text
    puts "Currently #{@activity} a follow request from user: #{user}"
    @browser.li(:class => /^_75ljm _3qhgf$/).button(:text => @response).click
    puts "Successful. #{(amount_of_requests) - (counter + 1)} requests remaining."
  end
end

# Invoke Handle Follows Process
click_on_heart
open_follow_requests
make_a_choice
accept_all_or_reject_all
