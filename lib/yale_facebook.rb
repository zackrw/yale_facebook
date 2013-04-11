
require 'mechanize'

class YaleFacebook

  def initialize(netid, password)
    @browser = make_cas_browser(netid, password)
    @browser.get('https://students.yale.edu/facebook/PhotoPage')
    @browser.get('https://students.yale.edu/facebook/ChangeCollege?newOrg=Yale%20College')
  end

  def search(search_string, opts={})

    search_url = <<HERE
    https://students.yale.edu/facebook/Search?searchTerm=#{search_string}&searchResult=true&currentIndex=-1&numberToGet=-1
HERE

    @browser.get(search_url)
    @browser.page.parser.css('.student-container')
  end

  def make_cas_browser(netid, password)
    browser = Mechanize.new
    browser.get('https://secure.its.yale.edu/cas/login')
    form = browser.page.forms.first
    form.username = netid
    form.password = password
    form.submit
    browser
  end


end
