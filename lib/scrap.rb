# To change this template, choose Tools | Templates
# and open the template in the editor.
#require "rubygems"
require "bundler/setup"
Bundler.require(:default)
require "open-uri"

#ActiveRecord::Base.logger = Logger.new(STDERR)
#ActiveRecord::Base.logger = Logger.new(File.open('log/database.log', 'a'))

url = "http://www.junglee.com/mn/search/junglee?ie=UTF8&rh=n%3A803540031&tag=googjuhydr-21&hvadid=13852647285&hvpos=1t1&hvexid=&hvnetw=g&hvrand=1594996003696969763&hvpone=&hvptwo=&hvqmt=e&ref=pd_sl_92zll2ojv_e"
doc = Nokogiri::HTML(open(url))
doc.css(".product").each do |each_product|
  puts each_product.at_css("h3").text
end
