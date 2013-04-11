require 'json'
require 'yale_facebook'

zack = JSON.parse(File.read(File.join(File.dirname(__FILE__), '..', 'zacks_info.json')));

yf = YaleFacebook.new(zack['netid'], zack['password'], { :ca_file => '/opt/local/share/curl/curl-ca-bundle.crt' })

puts yf.browser
