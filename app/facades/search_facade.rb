class SearchFacade
  def self.find_parks_info(state_abbreviation)
    attributes = ParkDatabase.movie_details(state_abbreviation)
    Park.new(attributes)
  end
end
