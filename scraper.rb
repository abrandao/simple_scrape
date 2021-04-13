require 'nokogiri'
require 'open-uri'

def scraping(url)
  html = open("#{url}").read
  nokogiri_doc = Nokogiri::HTML(html)
  final_array = []

  nokogiri_doc.search(".premium-place h2 a").each do |element|
    element = element.text
    final_array << element
  end
 
  puts final_array.sort
  
end

scraping('https://www.apontador.com.br/local/animais')