# To change this template, choose Tools | Templates
# and open the template in the editor.

require "rubygems"
require "nokogiri"
require "open-uri"

url = "http://www.coachfederation.org/about-icf/member-directory/"
doc = Nokogiri::HTML(open(url))
doc.at_xpath(".//*[@id='3eff9c15_bd57_4843_8d2f_b5e4b0f14561']/div/div/table/tbody/tr").each do |each_product|
  puts each_product.at_xpath("b").text
end

#puts doc.at_xpath(".//*[@id='3eff9c15_bd57_4843_8d2f_b5e4b0f14561']/div/div/table/tbody/tr/td")