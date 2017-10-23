require 'typhoeus'

request = Typhoeus::Request.new("https://developers.google.com/apps-script/reference/calendar/")
# request = Typhoeus::Request.new("https://lodash.com/docs/4.17.4")

# request = Typhoeus::Request.new("https://api.jquery.com/")


request.on_complete do |response|
  if response.success?
    # hell yeah
    puts(response.code)

  elsif response.timed_out?
    # aw hell no
    puts("got a time out")
  elsif response.code == 0
    # Could not get an http response, something's wrong.
    puts(response.return_message)
  else
    # Received a non-successful http response.
    puts("HTTP request failed: " + response.code.to_s)
  end
end

request.run