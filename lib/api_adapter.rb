require 'rest-client'
require 'json'
require 'pry'


class ApiAdapter

  attr_accessor :venue

  def initialize
    # @venue = name["Company Name"]
  end

  def get_venue_hash
    all_venues = RestClient.get("https://data.cityofnewyork.us/resource/2pc8-n4xe.json")
    venue_hash = JSON.parse(all_venues)
    venue_hash
  end

  def all_venue_names
    names = get_venue_hash
    names.each do |name|
      puts name["company_name"]
    end
  end

  def all_category_names
    category = get_venue_hash
    category.each do |name|
      puts name["subindustry"]
    end
  end

  def get_company_info(company_name)
    website = get_venue_hash
    website.find_all do |name|
      if name["company_name"] == company_name
        puts name
      end
    end
  end


end
