require 'net/http'

module DogWeather
  class Weather
    def weather(lat, lon)
      url = "api.openweathermap.org"
      res = Net::HTTP.get(url, "/data/2.5/weather?lat=#{lat}&lon=#{lon}")
      puts res 
    end
  end
end
