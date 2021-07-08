module ScraperHelper
  include FilmHelper
    URL = "https://www.loc.gov/film-and-videos/?fo=json"


    def parse_all
      films = JSON.parse(self.get_films)
      films["results"].collect do |film|
       Film.new(film)
      end

    end

    def get_films
      uri = URI.parse(URL)
      response = Net::HTTP.get_response(uri)
      response.body
      # binding.pry
    end

  # byebug
  # uri = URI.parse(URL)
  # response = Net::HTTP.get_response(uri)
  # response.body
  # data = JSON.parse(response.body)
  # # binding.pry
  # byebug
end
