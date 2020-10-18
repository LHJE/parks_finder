class WelcomeController < ApplicationController
  def index
    @state_params = params[:state]
    @parks_info = SearchFacade.find_parks_info(@state_params )
  end
end
