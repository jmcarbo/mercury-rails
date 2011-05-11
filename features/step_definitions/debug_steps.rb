# DEBUG / DELAY STEPS
#------------------------------------------------------------------------------

When /^(?:|I )sleep for (\d+) seconds?$/ do |seconds|
  sleep(seconds.to_i)
end

When /^I debug?$/ do
  put 'Debugging...'
  unless ENV['RUBYMINE'].present?
    require 'debug'
    debugger
  end
end
