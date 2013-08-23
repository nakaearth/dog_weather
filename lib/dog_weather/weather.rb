require 'net/http'

module DogWeather
  class Weather
    attr_reader :url

    def initialize
      @url = "api.openweathermap.org"
    end

    def weather(lat, lon)
      res = Net::HTTP.get(@url, "/data/2.5/weather?lat=#{lat}&lon=#{lon}")
      puts res
    end

    def city(city_name)
      res = Net::HTTP.get(@url, "/data/2.5/weather?q=#{city_name}")
      puts res
    end
  end
end
