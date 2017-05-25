require 'nokogiri'
require 'open-uri'
doc =Nokogiri::HTML(open("http://www.korea.ac.kr/user/restaurantMenuAllList.do?siteId=university&id=university_050402000000"))

for i in (1..6)
if i == 5
day = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//span.day").inner_text
puts day
date = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//span.date//span")[0].inner_text + "/" + doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//span.date//span")[1].inner_text
puts date
breakfast = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//p.menulist").inner_text.split("-")[1]
puts breakfast
lunch = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//div")[0].inner_text.split("-")[1]
puts lunch
dinner = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//div")[1].inner_text.split("-")[1]
puts dinner
elsif i == 6
day = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//span.day").inner_text
puts day
date = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//span.date//span")[0].inner_text + "/" + doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//span.date//span")[1].inner_text
puts date
breakfast = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//p.menulist").inner_text.split("-")[1]
puts breakfast
lunch = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//div")[0].inner_text.split("-")[1]
puts lunch
dinner = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//div")[1].inner_text.split("-")[1]
puts dinner
else
day = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//span.day").inner_text
puts day
date = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//span.date//span")[0].inner_text + "/" + doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//span.date//span")[1].inner_text
puts date
breakfast_a = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//p.menulist").inner_text.split("-")[1]
cc = breakfast_a
puts cc
breakfast_b = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//div")[0].inner_text.split("-")[1]
puts breakfast_b
lunch = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//div")[1].inner_text.split("-")[1]
puts lunch
dinner = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{2*i+1})//div")[2].inner_text.split("-")[1]
puts dinner
end
end
