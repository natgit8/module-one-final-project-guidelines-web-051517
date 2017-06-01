require 'rest-client'
require 'json'
require 'pry'

class ApiAdapter
  
  def get_venue_hash
    all_venues = RestClient.get("https://data.cityofnewyork.us/resource/2pc8-n4xe.json")
    venue_hash = JSON.parse(all_venues)
    venue_hash
  end

  def all_venue_names
    venues = get_venue_hash
    sorted_names = []
    venues.each do |venue|
      puts venue["company_name"]
      sorted_names << venue["company_name"]
    end
    puts sorted_names.sort
  end

  def all_category_names
    category = get_venue_hash
    all_categories = []
    category.each do |type|
      type["subindustry"]
      all_categories << type["subindustry"]
    end
    puts all_categories.uniq
  end

  def get_company_info(company_name)
    companies = get_venue_hash
    companies.find_all do |venue_info|
      if venue_info["company_name"] == company_name
        print_company_info(venue_info)
      end
    end
    CommandLine.get_user_input
  end

  def print_company_info(venue_hash)
    venue_hash.each do |k, v|
      puts "\t#{k} : #{v}"
    end
  end

  def list_by_category(category_name)
    categories = get_venue_hash
    matches = categories.find_all {|venue_info| venue_info["subindustry"] == category_name}
      print_category_list(matches)
    CommandLine.get_user_input
    end

  def print_category_list(venue_hash)
    venue_hash.each do |hash|
      puts "\t#{hash["company_name"]}"
    end
  end
end
