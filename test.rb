require 'json'
require 'yale_facebook'

zack = JSON.parse(File.read(File.join(File.dirname(__FILE__), '..', 'zacks_info.json')));

yf = YaleFacebook.new(zack['netid'], zack['password'])

puts yf.browser
