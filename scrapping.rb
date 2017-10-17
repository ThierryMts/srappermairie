require 'nokogiri'
require 'open-uri'
page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/bas-rhin.html"))
links = page.css("a.lientxt")
liste = links.each{|departement|
    a = "http://annuaire-des-mairies.com" + departement['href'].slice!(1..33)
    puts a
mailv = Nokogiri::HTML(open(a))
mailv.css('p:contains("@")').each do |node|
puts node.text

CSV.open("file.csv", "wb") do |csv|
       csv << [liste, mailv]
     end

end
}

