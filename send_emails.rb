
require 'gmail'

Gmail.connect(username, password) do |gmail|
  # play with your gmail...
end

gmail.deliver do
  to "blackweedz@live.fr"
  subject "Having fun in Puerto Rico!"
  text_part do
    body "Text of plaintext message."
  end
  html_part do
    content_type 'text/html; charset=UTF-8'
    body "<p>Text of <em>html</em> message.</p>"
  end
  #add_file "/path/to/some_image.jpg"
end