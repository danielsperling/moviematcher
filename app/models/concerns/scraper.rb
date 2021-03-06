require 'nokogiri'
require 'httparty'

class Scraper
  def scraper
    page = 1
    last_page = 10

    movies = []

    while page <= last_page

      url = "https://www.imdb.com/search/keyword/?ref_=kw_ref_gnr&sort=moviemeter,asc&mode=detail&page=#{page}&genres=Action"
      unparsed_page = HTTParty.get(url)
      parsed_page = Nokogiri::HTML(unparsed_page.body)
      movie_card = parsed_page.css('div.lister-item.mode-detail')

      movie_card.each do |scrape|
        movie_info = {
          title: scrape.css('div.lister-item-content').css('h3').css('a').text,
          year: scrape.css('div.lister-item-content').css('span.lister-item-year').text,
          genre: scrape.css('div.lister-item-content').css('p').css('span.genre').text,
          plot: scrape.css('div.lister-item-content').css('p')[1].text,
          poster: scrape.css('div.lister-item-image.ribbonize > a > img').map { |img| img['loadlate'] }
        }
        movies << movie_info
      end
      page += 1
      sleep(0.5)
    end
    movies
  end
end

scrape = Scraper.new
scrape.scraper
