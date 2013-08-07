require 'rubygems'
require 'httparty'
require 'hashie'

class BreweryDb2
  include HTTParty
  base_uri 'http://api.brewerydb.com/v2'
  format :json
  default_params :format => 'JSON'
  @@apikey = nil

  def self.heartbeat(options={})
    options.merge!({
      :key => apikey
      })

    response = get("/heartbeat", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.search(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/search", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.search_upc(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/search/upc", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.search_geopoint(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/search/geo/point", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.search_style(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/search/style", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.adjuncts(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/adjuncts", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.adjunct(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/adjunct/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.breweries(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/breweries", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.brewery(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/brewery/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.brewery_add(options={})
    options.merge!({
      :key => apikey
    })

    response = post("/breweries", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.brewery_update(id, options={})
    options.merge!({
      :key => apikey
    })

    response = put("/brewery/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.beers(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/beers", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.beer(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/beer/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.beer_add(options={})
    options.merge!({
      :key => apikey
    })

    response = post("/beers", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.beer_update(id, options={})
    options.merge!({
      :key => apikey
    })

    response = put("/beer/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.styles(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/styles", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.style(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/style/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.categories(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/categories", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.category(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/category/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.glassware(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/glassware", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.glass(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/glass/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.events(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/events", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.event(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/event/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.event_add(options={})
    options.merge!({
      :key => apikey
    })

    response = post("/events", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.event_update(id, options={})
    options.merge!({
      :key => apikey
    })

    response = put("/event/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.featured(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/featured", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.features(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/features", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.feature(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/feature/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.fermentables(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/fermentables", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.fermentable(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/fermentable/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.fluidsizes(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/fluidsizes", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.fluidsize(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/fluidsize/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.guilds(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/guilds", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.guild(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/guild/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.guild_add(id, options={})
    options.merge!({
      :key => apikey
    })

    response = post("/guilds", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.guild_update(id, options={})
    options.merge!({
      :key => apikey
    })

    response = put("/guild/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.hops(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/hops", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.hop(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/hop/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.ingredients(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/ingredients", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end


  def self.ingredient(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/ingredient/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.locations(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/locations", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.location(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/location/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.location_update(id, options={})
    options.merge!({
      :key => apikey
    })

    response = put("/location/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.menu(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/menu/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.socialsites(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/socialsites", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.socialsite(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/socialsite/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.yeasts(options={})
    options.merge!({
      :key => apikey
    })

    response = get("/yeasts", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.yeast(id, options={})
    options.merge!({
      :key => apikey
    })

    response = get("/yeast/#{id}", :query => options)
    Hashie::Mash.new(response) if response.code == 200
  end

  def self.apikey
    @@apikey
  end

  def self.apikey=(apikey)
    @@apikey = apikey
  end

  def self.configure
    yield self
  end

end
