def get_username
  print "Enter your Instagram username: "
  return gets.chomp
end

def get_password
  begin
    instagram_password = ask("Enter your password: ") { |q| q.echo = "*" }
    password_confirmation = ask("Confirm your password: ") { |q| q.echo = "*" }
    instagram_password == password_confirmation ? instagram_password : raise Exception.new("Your passwords do not match. Try again.")
  rescue Exception => error_message
    puts "#{error_message}"
    retry
  end
end

# Invoke the Getting Info Process
USERNAME = get_username
PASSWORD = get_password
