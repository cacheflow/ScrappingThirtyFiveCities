require "nokogiri"
require "open-uri"
require "csv"
url = "http://elclasificado.com/atlanta"


doc = Nokogiri::HTML(open(url))


CSV.open("results.csv", "wb") do |csv|
	
	doc.css(".tile-title").each do |item|
		csv << [item.text.tr("[()]+0-9", ""), item.text.tr("^0-9$", "")] 
	end 

	doc.css(".tile-subcategory").each do |tile|
 		csv << [tile.text.tr("[()]+0-9", ""), tile.text.tr("^0-9$", "")]
	end 

	end  
 

end 