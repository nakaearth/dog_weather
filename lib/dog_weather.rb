$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) ||
                                            $:.include?(File.expand_path(File.dirname(__FILE__)))
require "dog_weather/version"
require "dog_weather/weather"

module DogWeather
  autoload :Weather ,"dog_weather/weathre"

  weather = Weather.new
  weather.weather 35.8, 135
end
