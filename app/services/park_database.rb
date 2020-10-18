class ParkDatabase
  def self.movie_details(state_abbreviation)
    key = ENV['NPS_API_KEY']
    url = 'https://developer.nps.gov'
    uri = "/api/v1/parks?stateCode=#{state_abbreviation}&api_key="
    get_results(url, key, uri)
  end

  def self.get_results(url, key, uri)
    conn = Faraday.new(url: url) do |faraday|
      faraday.headers['X-API-Key'] = key
    end
    results = conn.get(uri)
    JSON.parse(results.body, symbolize_names: true)
  end
end
