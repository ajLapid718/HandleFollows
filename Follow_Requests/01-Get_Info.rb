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

def accept_or_reject
  begin
    print "Enter the letter A to accept all requests; enter the letter R to reject all requests: "
    decision = gets.upcase.chomp
    if decision == "A" || decision == "R"
      return decision
    else
      raise Exception.new("Invalid entry. Please try again.")
    end
  rescue Exception => e
    puts "#{e}"
    retry
  end
end

# Invoke the Getting Info Process
USERNAME = get_username
PASSWORD = get_password
DECISION = accept_or_reject
