require "rspec"
require './weather.rb'

describe Weather do
  before do
    @weather_kuldiga = Weather.new("./weather_kuldiga.xml")
    @weather_ventspils = Weather.new("./weather_ventspils.xml")
  end

  it "should return temperature in celsius scale" do
    @weather_kuldiga.temperature.should == 18
    @weather_ventspils.temperature.should == 18
  end
  
  it "should return humidity in percent" do
    @weather_kuldiga.humidity.should == "73%"
    @weather_ventspils.humidity.should == "57%"
  end

  it "should return weather icon name" do
    @weather_kuldiga.weather_icon.should == "mostly_cloudy.gif"
    @weather_ventspils.weather_icon.should == "cloudy.gif"
  end

  it "should return wind speed in kilometers" do
    @weather_kuldiga.wind_speed_in_km.should == 14.48
    @weather_ventspils.wind_speed_in_km.should == 22.53
  end
end